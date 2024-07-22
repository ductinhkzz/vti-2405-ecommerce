import { NavLink } from 'react-router-dom';

import { IProduct } from '@/redux/types';
import ProductPrice from './ProductPrice';
import { Button } from '@/components';

type ProductItemProps = {
  product: IProduct;
};

const ProductItem = ({ product }: ProductItemProps) => {
  return (
    <NavLink to={`/product/${product.id}`} className='group relative'>
      <div className='aspect-h-1 aspect-w-1 w-full overflow-hidden rounded-md bg-gray-200 lg:aspect-none group-hover:opacity-75 lg:h-80'>
        <img
          src={product.thumbnail}
          alt={product.title}
          className='h-full w-full object-cover object-center lg:h-full lg:w-full'
        />
      </div>
      <div className='mt-4 flex justify-between'>
        <h3 className='text-sm text-gray-700'>{product.title}</h3>
        <ProductPrice variants={product.variants} />
      </div>
      <Button color='secondary' className='w-32 mt-12'>View now</Button>
    </NavLink>
  );
};

export { ProductItem };
