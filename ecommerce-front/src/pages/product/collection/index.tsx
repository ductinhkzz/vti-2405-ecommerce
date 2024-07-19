import { Navigate, useParams } from 'react-router-dom';

import { useGetProductCollectionQuery, useGetProductsQuery } from '@/redux/api';
import { parseMetadata } from '@/utils';
import { RenderBlock } from '@/components';
import { PaginatedProducts } from '../components';

const ProductCollection = () => {
  const { id = '' } = useParams<'id'>();

  const { data, isLoading } = useGetProductCollectionQuery(
    {
      id,
    },
    {
      skip: !id,
      refetchOnMountOrArgChange: true,
    },
  );

  const { data: productResponse } = useGetProductsQuery({ collection_id: [id] });
  const products = productResponse?.products ?? [];

  if ((!id || !data) && isLoading === false) {
    return <Navigate to='404' />;
  }

  const collection = {
    ...data,
    metadata: parseMetadata(data?.metadata ?? {}),
  };
  console.log('==========collection==================');
  console.log(collection.metadata);
  console.log('============================');

  const a = [
    {
      type: 'hero-block',
      medias: [
        {
          url: 'https://www.duxiana.com/static/8eb37cbef61a960114805a7ad40c1b1c/6c031/bed-frame-dux-3003-inspiration-xupport-plus-pii-1-the-audo.jpg',
          position: 'left',
        },
        {
          url: 'https://www.duxiana.com/static/b062b1d42ff60e9e351184b7b59e7d24/3835e/dux_8008_interior_960x714.jpg',
          position: 'right',
        },
      ],
    },
    {
      type: 'header-divider-block',
      title: 'ACCESSORIES',
      description:
        'Choose your bed legs, headboard, bed skirt, and linen. Our exclusive line of accessories is the perfect fit for your DUX bed. ',
      actions: [
        {
          text: 'Bed accessories',
          href: '/',
          variant: 'outlined',
        },
        {
          text: 'Bedding',
          href: '/',
          variant: 'text',
        },
      ],
    },
  ];

  return (
    <>
      {collection.metadata.top_blocks?.map((block) => {
        return <RenderBlock key={`${block.type}_${block.title}`} {...block} />;
      })}
      <PaginatedProducts products={products} />
      {a.map((block) => {
        return <RenderBlock key={`${block.type}_${block.title}`} {...block} />;
      })}
    </>
  );
};

export default ProductCollection;
