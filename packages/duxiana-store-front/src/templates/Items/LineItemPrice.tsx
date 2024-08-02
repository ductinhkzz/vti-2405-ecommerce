import clsx from 'clsx';

import { CalculatedVariant } from '@/types';
import { formatAmount, getPercentageDiff } from '@/utils';
import { LineItemPriceProps } from './types';

const LineItemPrice = ({ item, region, style = 'default' }: LineItemPriceProps) => {
  const originalPrice = (item.variant as CalculatedVariant).original_price * item.quantity;
  const hasReducedPrice = (item.total ?? 0) < originalPrice;

  return (
    <div className='flex flex-col gap-x-2 text-ui-fg-subtle items-end'>
      <div className='text-left'>
        {hasReducedPrice && (
          <>
            <p>
              {style === 'default' && <span className='text-ui-fg-subtle'>Original: </span>}
              <span className='line-through text-ui-fg-muted' data-testid='product-original-price'>
                {formatAmount({
                  amount: originalPrice,
                  region: region,
                  includeTaxes: false,
                })}
              </span>
            </p>
            {style === 'default' && (
              <span className='text-ui-fg-interactive'>-{getPercentageDiff(originalPrice, item.total ?? 0)}%</span>
            )}
          </>
        )}
        <span
          className={clsx('text-base-regular', {
            'text-ui-fg-interactive': hasReducedPrice,
          })}
          data-testid='product-price'>
          {formatAmount({
            amount: item.total ?? 0,
            region: region,
            includeTaxes: false,
          })}
        </span>
      </div>
    </div>
  );
};

export default LineItemPrice;
