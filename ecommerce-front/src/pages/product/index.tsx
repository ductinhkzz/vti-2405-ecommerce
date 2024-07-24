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

  if (!id || !data || !region) {
    return <Navigate to='404' />;
  }

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
    {
      type: 'image-slider-block',
      sub_title: 'Dynamic Support',
      title: 'SWEDISH STEEL CONTINUOUS COIL SPRING DESIGN',
      description: `Only the dynamic nature of a spring system can contour to all of your movements at night. The revolutionary DUX spring system adjusts itself to the weight and shape of your body. It moves as you move. It conforms to your contours, providing continuous, dynamic support along every point of your body. The DUX spring design is neither too firm nor too soft. It is flexible enough to let your shoulders and hips sink in, yet resilient enough to rise up and support your lower back. Vital pressure points — especially your spine — are supported in the most ergonomically healthy positions possible, letting your blood circulate freely while your muscles completely relax.`,
      images: ['https://dux.prod.kan.solutions/siteassets/images/why-dux/innovation/springs_947x467.jpg'],
      actions: [
        {
          text: 'Continuous Spring Innovation',
          url: '/why-dux/innovation',
        },
      ],
      theme: 'cool-gray',
    },
    {
      type: 'hero-block',
      medias: [
        {
          url: 'https://dux.prod.kan.solutions/siteassets/images/products/beds/dux_1001_interior_1920x714.jpg?width=1430&height=953&mode=crop',
        },
      ],
    },
    {
      type: 'header-divider-block',
      title: 'Sustainable Craftmanship',
      description: `Long-lasting materials, human-ecological highest standards, customizable components. We apply the sustainable approach to every step of the DUX production process. Our furniture's and beds' life cycle is based on the Replace, Renew, and Restore strategy.`,
      actions: [
        {
          text: 'Sustainability, quality, and longevity',
          url: '/why-dux/sustainability',
        },
      ],
      theme: 'warm-gray',
    },
    {
      type: 'image-slider-block',
      sub_title: 'INNOVATION',
      title: 'THE DUX BED WITH INTERIOR FRAME AND VARIABLE LEG HEIGHTS',
      description:
        'Designed like a piece of furniture, The DUX Bed’s interior frame allows you to simply select the leg style, height, and color of your choice and fasten the leg to the frame by threading it into place.',
      images: [
        'https://dux.prod.kan.solutions/siteassets/images/why-dux/interior-frame-mattress/internal-frame-mattress-dt.jpg',
        'https://dux.prod.kan.solutions/siteassets/images/why-dux/interior-frame-mattress/interior-frame-mattress-banner.jpg',
        'https://dux.prod.kan.solutions/siteassets/images/why-dux/interior-frame-mattress/leg-teaser.jpg',
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
