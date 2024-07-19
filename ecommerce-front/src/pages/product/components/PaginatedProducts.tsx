import { IProduct } from '@/redux/types';
import { Container } from '@/components';
import { ProductItem } from './ProductItem';

type PaginatedProductsProps = {
  products: IProduct[];
};

const PaginatedProducts = ({ products }: PaginatedProductsProps) => {
  return (
    <Container>
      <div className='container sm:w-xl w-full flex'>
        <div className='<div class="mt-6 grid grid-cols-1 gap-x-6 gap-y-10 sm:grid-cols-2 lg:grid-cols-4 xl:gap-x-8">'>
          {products.map((product) => (
            <ProductItem key={product.id} product={product} />
          ))}
        </div>
      </div>
    </Container>
  );
};

export { PaginatedProducts };
