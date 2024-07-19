import { ICard } from '@/types';
import {
  HeaderDivider,
  HeroBanerSection,
  HeroSection,
  CardSliderSection,
  CardBlockHeader,
  HeroCardBlockSection,
} from '@/components';
import videoUrl from '@/assets/images/hero-video.mp4';
import cardImg1 from '@/assets/images/card-1.jpg';
import cardImg2 from '@/assets/images/card-2.jpg';
import cardImg3 from '@/assets/images/card-3.jpg';
import cardImg4 from '@/assets/images/card-4.jpg';
import heroCardImg1 from '@/assets/images/hero-card-1.jpg';
import heroCardImg2 from '@/assets/images/hero-card-2.jpg';
import { usePageTitle } from '@/hooks';

const Home = () => {
  const cards: ICard[] = [
    {
      id: '1',
      title: 'Travel Pillow',
      description: 'Portable Luxury Down Pillow: $178',
      image: cardImg1,
    },
    {
      id: '2',
      title: 'Sateen Sheet Set',
      description: 'Four Colors Starting at $625',
      image: cardImg2,
    },
    {
      id: '3',
      title: 'Micro-Spring Pillow',
      description: 'Starting At $380',
      image: cardImg3,
    },
    {
      id: '4',
      title: 'Down Starter Set',
      description: 'Barcelona Light Duvet and 2 Oslo Pillows Starting at $1,760',
      image: cardImg4,
    },
    {
      id: '5',
      title: 'Travel Pillow',
      description: 'Portable Luxury Down Pillow: $178',
      image: cardImg1,
    },
    {
      id: '6',
      title: 'Sateen Sheet Set',
      description: 'Four Colors Starting at $625',
      image: cardImg2,
    },
    {
      id: '7',
      title: 'Micro-Spring Pillow',
      description: 'Starting At $380',
      image: cardImg3,
    },
    {
      id: '8',
      title: 'Down Starter Set',
      description: 'Barcelona Light Duvet and 2 Oslo Pillows Starting at $1,760',
      image: cardImg4,
    },
  ];

  const heroCards: ICard[] = [
    {
      id: '1',
      title: 'Scandinavian Design',
      description:
        'As a fourth generation family owned company, our only responsibilities are to our customers, to the quality and longevity of our product and to the health of the planet.',
      image: heroCardImg1,
      btn: {
        text: 'Scandinavian Design',
      },
      isTextTop: true,
    },
    {
      id: '2',
      title: 'Environmental Impact',
      description: `High quality materials, innovative component design and Oeko Tex 100 Standard Certified. It's in our nature.`,
      image: heroCardImg2,
      btn: {
        text: 'Read about sustainable awareness',
      },
    },
  ];

  usePageTitle('Duxiana Store');

  return (
    <>
      <HeroBanerSection />
      <HeaderDivider
        title='Next-Level Comfort'
        description='Enjoying the comfort of your bed is the ultimate luxury. Our goal is to provide you with the best possible  experience of rest. We achieve this through innovation. DUX technology enables the highest quality sleep, supporting your well-being, and ensuring back pains relief.'
        actions={[
          {
            text: 'Discover the DUX advantages',
            url: '',
          },
          {
            text: 'Try it yourself →',
            url: '',
            variant: 'text',
          },
        ]}
      />
      <CardBlockHeader title='The DUXIANA Online Marketplace' btn={{ text: 'View all' }} />
      <CardSliderSection cards={cards} />
      <HeroSection
        medias={[
          {
            url: videoUrl,
            isVideo: true,
            position: 'full',
          },
        ]}
        sub_title='New partner'
        title='Tottenham Hotspur'
        theme='black'
        actions={[
          {
            text: 'Read more about the collaboration',
            url: '',
          },
        ]}
        description={`We are proud to announce that DUXIANA has become Tottenham Hotspur Football Club's official bed supplier. Tottenham Hotspur has decided to put their trust in The DUX Bed as they believe that our products are more than just a bed, but more a sleep system and a vehicle for well-being.`}
      />
      <CardBlockHeader title='Scandinavian Design and Environmental Impact' />
      <HeroCardBlockSection cards={heroCards} />
      <CardBlockHeader title='THE DUX BED LINE-UP' btn={{ text: 'View all' }} />
      <CardSliderSection cards={cards} />
    </>
  );
};

export default Home;
