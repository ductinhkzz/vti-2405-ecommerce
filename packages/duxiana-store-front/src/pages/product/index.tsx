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

  const b = [
    {
      type: 'header-divider-block',
      title: 'Customize Your Bed',
      description:
        'We believe that your bed is your castle. That is why we let you choose all the components, from mattress, headboard, and top pad to legs. Make DUX personal!',
      actions: [
        {
          text: 'Find a store near you',
          url: '/store',
        },
        {
          text: 'Learn how to customize your bed',
          url: '/customization',
          variant: 'text',
        },
      ],
      theme: 'cool-gray',
    },
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
    },
    {
      type: 'hero-block',
      medias: [
        {
          url: 'https://dux-usa.prep.kan.solutions/siteassets/bed-pages---usa/dux-10/hero-image.jpg?width=1430&height=953&mode=crop',
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
          url: '/why-dux',
        },
      ],
    },
    {
      type: 'hero-block',
      medias: [
        {
          url: 'https://www.duxiana.com/static/3a7da8365893e593565a5364f285fae2/a26a4/try-at-hotel.jpg',
          position: 'right',
        },
      ],
      title: 'Experience Dux',
      description:
        'The best way to feel the DUX difference is to experience it overnight. Why not stay a night at one of our partner’s hotel to experience the DUX bed before buying?',
      actions: [
        {
          text: 'Try at hotel',
          url: '/why-dux/innovation',
        },
      ],
      theme: 'gray'
    },
    {
      type: 'header-divider-block',
      title: 'Ultimate Customization',
      description:
        'The Sustainable Comfort design is based on three distinct sleep components, giving you unmatched options to adjust the support of your bed. This system also allows you to upgrade or replace components as your needs change, refreshing and extending the bed’s comfort for decades to come.',
      actions: [
        {
          text: 'See All Components',
          url: '/store',
        },
      ],
      theme: 'cool-gray',
    },
    {
      type: 'hero-block',
      medias: [
        {
          url: 'https://dux-usa.prep.kan.solutions/siteassets/bed-pages---usa/bottom-sustainable-comfort-hero.jpg?width=1430&height=953',
        },
      ],
      title: 'Our Latest Innovation',
      sub_title: 'DUX Sustainable Comfort',
      description:
        'Discover a personalized sleep experience that prioritizes both your well-being and the health of the planet. The latest generation of the legendary DUX bed combines a customizable, component-based sleep system with luxurious all-natural materials.',
      actions: [
        {
          text: 'Show all beds',
          url: '/why-dux/innovation',
        },
        {
          text: 'Explore Sustainable Comfort',
          url: '/why-dux/innovation',
          variant: 'text',
        },
      ],
      theme: 'gray'
    },
  ];

  console.log('============================');
  console.log(JSON.stringify(b));
  console.log('============================');

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
