import { IProductVariant } from '@/redux/types';
import { getMinPriceProduct } from '@/utils';

type ProductPriceProps = {
  variants?: IProductVariant[];
};

const ProductPrice = ({ variants = [] }: ProductPriceProps) => {
  const minPrice = getMinPriceProduct(variants);
  if (!minPrice) {
    return <p className='text-sm font-medium text-gray-900'>Unavailable</p>;
  }

  return <p className='text-sm font-medium text-gray-900'>Starts at ${minPrice.amount / 100}</p>;
};

export default ProductPrice;
