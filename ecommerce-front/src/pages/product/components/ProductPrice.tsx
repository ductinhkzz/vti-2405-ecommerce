import clsx from 'clsx';

import { RegionInfo } from '@/types';
import { getProductPrice } from '@/utils';
import { IProduct, IProductVariant } from '@/redux/types';

type ProductPriceProps = {
  product: IProduct;
  variant?: IProductVariant;
  region: RegionInfo;
};

const ProductPrice = ({ product, variant, region }: ProductPriceProps) => {
  const { cheapestPrice, variantPrice } = getProductPrice({
    product,
    variantId: variant?.id,
    region,
  });

  const selectedPrice = variant ? variantPrice : cheapestPrice;

  if (!selectedPrice) {
    return <div className='block w-32 h-9 bg-gray-100 animate-pulse' />;
  }

  return (
    <div className='flex flex-col text-ui-fg-base'>
      <span
        className={clsx('text-xl-semi', {
          'text-ui-fg-interactive': selectedPrice.price_type === 'sale',
        })}>
        {!variant && 'From '}
        <span data-testid='product-price' data-value={selectedPrice.calculated_price_number}>
          {selectedPrice.calculated_price}
        </span>
      </span>
      {selectedPrice.price_type === 'sale' && (
        <>
          <p>
            <span className='text-ui-fg-subtle'>Original: </span>
            <span
              className='line-through'
              data-testid='original-product-price'
              data-value={selectedPrice.original_price_number}>
              {selectedPrice.original_price}
            </span>
          </p>
          <span className='text-ui-fg-interactive'>-{selectedPrice.percentage_diff}%</span>
        </>
      )}
    </div>
  );
};

export default ProductPrice;
