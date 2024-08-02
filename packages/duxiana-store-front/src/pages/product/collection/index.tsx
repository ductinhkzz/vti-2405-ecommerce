import { Navigate, useParams } from 'react-router-dom';

import { useGetProductCollectionsQuery, useGetProductsQuery } from '@/redux/api';
import { parseMetadata } from '@/utils';
import { RenderBlock } from '@/components';
import { PaginatedProducts } from '../components';

const ProductCollection = () => {
  const { handle = '' } = useParams<'handle'>();

  const { data = [], isLoading } = useGetProductCollectionsQuery(
    { handle: [handle] },
    { skip: !handle, refetchOnMountOrArgChange: true },
  );

  const { data: productResponse } = useGetProductsQuery(
    { collection_id: [data[0]?.id] },
    { skip: data.length === 0, refetchOnMountOrArgChange: true },
  );
  const products = productResponse?.products ?? [];

  if ((!handle || data.length === 0) && isLoading === false) {
    return <Navigate to='404' />;
  }

  const collection = {
    ...data[0],
    metadata: parseMetadata(data[0]?.metadata ?? {}),
  };

  return (
    <>
      {collection.metadata.top_blocks?.map((block) => {
        return <RenderBlock key={`${block.type}_${block.title}`} {...block} />;
      })}
      <PaginatedProducts products={products} />
      {collection.metadata.bottom_blocks?.map((block) => {
        return <RenderBlock key={`${block.type}_${block.title}`} {...block} />;
      })}
    </>
  );
};

export default ProductCollection;
