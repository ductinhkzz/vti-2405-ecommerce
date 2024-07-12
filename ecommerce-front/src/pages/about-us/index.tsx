import { ICard } from '@/types';
import { HeaderDivider, HeroCardBlockSection, HeroSection, ImageList, TextBlock } from '@/components';
import { usePageTitle } from '@/hooks';

import heroImgUrl from '@/assets/images/about-us/hero-img.png';
import heroImgUrl2 from '@/assets/images/about-us/hero-img-2.png';
import imgList1 from '@/assets/images/about-us/img-list-1.jpg';
import imgList2 from '@/assets/images/about-us/img-list-2.jpg';
import imgList3 from '@/assets/images/about-us/img-list-3.jfif';
import imgList4 from '@/assets/images/about-us/img-list-4.jpg';
import heroCard1 from '@/assets/images/about-us/hero-card-1.jpg';
import heroCard2 from '@/assets/images/about-us/hero-card-2.jpg';
import heroCard3 from '@/assets/images/about-us/hero-card-3.jpg';

const AboutUs = () => {
  const heroCards: ICard[] = [
    {
      id: '1',
      title: 'News and Events',
      description: 'Follow our news',
      image: heroCard1,
    },
    {
      id: '2',
      title: 'Contact us',
      description: 'Find your local contact',
      image: heroCard2,
    },
    {
      id: '3',
      title: 'Why DUX',
      description: 'Explore the DUX difference',
      image: heroCard3,
    },
  ];

  usePageTitle('About us | Duxiana');

  return (
    <>
      <TextBlock
        title='DUX, the Swedish heritage'
        subTitle='About Us'
        description='Four generations, over 90 years, more than 30 countries, and over 300 stores. We are a family company producing one of the most technologically advanced beds on the market. Our great attention to comfort, longevity, quality, and innovation led us to create beds that enable better sleep.'
      />
      <HeroSection
        mediaList={[
          {
            isVideo: false,
            url: heroImgUrl,
          },
        ]}
      />
      <HeaderDivider
        header={{
          title: 'Once upon a Time in Sweden',
        }}
        content={{
          text: `Everything started in 1926 in Malmö, where Efraim Ljung launched his first innerspring mattress production in Sweden. Four Ljung family generations later, DUX became a global brand, opening 88 stores worldwide. The finest craftsmanship, simple design, and high-quality materials have been appreciated on U.S. soil since 1977. By the end of 1990, DUX's fame spread throughout Europe, winning the British people's hearts. Apart from the significant growth, we remain a family company, proud of our roots and tradition. Visit one of our stores in over 30 countries. `,
          actions: [
            {
              text: 'Find your nearest store',
            },
            {
              text: 'Read more about the DUX heritage →',
            },
          ],
        }}
      />
      <ImageList list={[imgList1, imgList2]} />
      <HeroSection
        mediaList={[
          {
            isVideo: false,
            url: heroImgUrl2,
          },
        ]}
        title='THE DUX DIFFERENCE'
        description='DUX is more than just a bed. It is a vehicle for your well-being. The construction of our products has evolved over the years. We are continuously refining, improving, and innovating our signature technology based on high-tensile springs. Our beds are constructed with a hardwood frame that can be fitted with a variety of leg choices. Some of our beds offer adjustable lumbar support to fulfill your specific needs. We aim to provide you with the best experience, rest, and relief.'
        btnText='Explore our bed collection'
      />
      <TextBlock
        position='left'
        title='The Jetson chair'
        subTitle='The Jetson chair'
        description='DUX introduced the Jetson chair at the Nordiska Galleriet in Stockholm in 1969. It took three years for Bruno Mathsson, father of modern Swedish design, to finalize this world-famous piece of furniture. Its perfect fusion of traditional Swedish craft and Modernism became an immediate success. Mathsson had an excellent feeling for simplicity, fastidious beauty, and combined it with comfort and elegance of form.'
        highlightText='The Jetson chair features a bowl-shaped seat, ergonomically designed high back with a head pillow, and a chrome swivel base with a unique self-return mechanism.'
        action={{
          text: 'Explore our furniture collection',
        }}
      />
      <ImageList list={[imgList3, imgList4]} />
      <HeroCardBlockSection cards={heroCards} full={false} />
    </>
  );
};

export default AboutUs;
