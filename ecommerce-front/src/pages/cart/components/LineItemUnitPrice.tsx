import { ILineItem, IRegion } from '@/redux/types';
import { CalculatedVariant } from '@/types';
import { formatAmount, getPercentageDiff } from '@/utils';
import clsx from 'clsx';

type LineItemUnitPriceProps = {
  item: ILineItem;
  region: IRegion;
  style?: 'default' | 'tight';
};

const LineItemUnitPrice = ({ item, region, style = 'default' }: LineItemUnitPriceProps) => {
  const originalPrice = (item.variant as CalculatedVariant).original_price;
  const hasReducedPrice = (originalPrice * item.quantity || 0) > item.total!;
  const reducedPrice = (item.total ?? 0) / item.quantity;

  return (
    <div className='flex flex-col justify-center h-full'>
      {hasReducedPrice && (
        <>
          <p>
            {style === 'default' && <span className=''>Original: </span>}
            <span className='line-through' data-testid='product-unit-original-price'>
              {formatAmount({
                amount: originalPrice,
                region: region,
                includeTaxes: false,
              })}
            </span>
          </p>
          {style === 'default' && <span className=''>-{getPercentageDiff(originalPrice, reducedPrice || 0)}%</span>}
        </>
      )}
      <span
        className={clsx('', {
          'text-ui-fg-interactive': hasReducedPrice,
        })}>
        {formatAmount({
          amount: reducedPrice || item.unit_price || 0,
          region: region,
          includeTaxes: false,
        })}
      </span>
    </div>
  );
};

export default LineItemUnitPrice;
