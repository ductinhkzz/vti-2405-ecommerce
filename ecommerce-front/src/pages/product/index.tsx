import { Navigate, useParams } from 'react-router-dom';

import { useGetProductQuery } from '@/redux/api';
import { ProductBanner, ProductInfo, ProductSlider } from './components';
import { RenderBlock } from '@/components';

const Product = () => {
  const { id = '' } = useParams<'id'>();
  const { data, isLoading } = useGetProductQuery({ id }, { skip: !id });

  if ((!id || !data) && isLoading === false) {
    return <Navigate to='404' />;
  }

  console.log('============================');
  console.log(data);
  console.log('============================');

  const top_blocks: any[] = [
    {
      type: 'image-slider-block',
      title: 'Superior Comfort',
      description:
        'The secret behind DUX is technology. We aim to ensure the highest sleep quality, focusing on proper posture and improved deep sleep. Thanks to continuous coil spring design and time-tested technology, The DUX Beds are incredibly comfortable.',
      actions: [
        {
          text: 'The DUX Innovation',
          url: '/why-dux/innovation',
        },
      ],
      images: ['https://dux.prod.kan.solutions/siteassets/images/lifestyle-interior/sleep-science-hero.jpg'],
      theme: 'warm-gray',
    },
    {
      type: 'image-slider-block',
      title: 'REMOVABLE TOP PAD',
      description:
        'Every DUX bed comes with our Xupport Top Pad. This 2.5 inch replaceable cotton covered latex top pad adds extra softness and cushioning, and is an integral part of The DUX® Bed, enhancing the personal feel and comfort vital to a great night’s rest. Unlike most beds with pillow tops, our top pad is not fastened to the bed. Not only does this complement the contouring nature of our beds, but in the case of a spill or wear, you can simply replace the top pad without having to replace your entire mattress. ',
      images: [
        'https://dux.prod.kan.solutions/siteassets/images/products/bed-accessories/top-pad/top-pad-dt1.jpg',
        'https://dux.prod.kan.solutions/siteassets/images/products/bed-accessories/top-pad/top-pad-dt.jpg',
        'https://dux.prod.kan.solutions/siteassets/images/products/bed-accessories/top-pad/top-pad-slide1.jpg',
      ],
    },
  ];

  return (
    <>
      <ProductBanner
        title='The DUX 1001'
        image='https://cdn11.bigcommerce.com/s-h00k8rz506/images/stencil/1920w/products/375/1626/_d-1001-banner__88672.1702397375.1280.1280.jpg?c=3'
        description='Shop the DUX® 1001 with Xupport bed, the perfect introduction to the legendary DUX comfort and support with dynamic two-layer spring construction.'
        actions={[
          {
            text: 'Build your bed',
            url: '',
            color: 'primary',
          },
          {
            text: 'Experience in store',
            url: '',
            color: 'primary',
          },
        ]}
      />
      <ProductSlider images={data?.images} />
      {data && <ProductInfo {...data} />}
      {top_blocks.map((block) => (
        <RenderBlock key={`${block.type}_${block.title}`} {...block} />
      ))}
    </>
  );
};

export default Product;
