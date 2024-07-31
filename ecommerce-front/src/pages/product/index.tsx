import { Navigate, useParams } from 'react-router-dom';

import { useGetProductQuery, useGetRegionsQuery } from '@/redux/api';
import { ProductActions, ProductBanner, ProductInfo, ProductSlider } from './components';
import { LoadingOverlay, RenderBlock } from '@/components';

const DEFAULT_COUNTRY = 'vn';

const Product = () => {
  const { region } = useGetRegionsQuery(undefined, {
    selectFromResult: ({ data = [] }) => {
      const region = data.find((r) => r.countries.some((c) => c.iso_2 === DEFAULT_COUNTRY));
      return {
        region,
      };
    },
  });

  const { id = '' } = useParams<'id'>();
  const { data, isLoading } = useGetProductQuery({ id, region_id: region?.id }, { skip: !id || !region?.id });

  if (isLoading) {
    return <LoadingOverlay />;
  }

  if (!data) {
    return <></>;
  }

  if (!id || !region) {
    return <Navigate to='404' />;
  }

  const top_blocks: any[] = data.metadata?.top_blocks ? JSON.parse(data.metadata?.top_blocks) : [];

  const banner: any = data.metadata?.banner ? JSON.parse(data.metadata?.banner) : null;

  return (
    <>
      {banner && <ProductBanner {...banner} />}
      <ProductSlider images={data.images} />
      <ProductActions product={data} region={region} />
      <ProductInfo {...data} />
      {top_blocks.map((block) => (
        <RenderBlock key={`${block.type}_${block.title}`} {...block} />
      ))}
    </>
  );
};

export default Product;
