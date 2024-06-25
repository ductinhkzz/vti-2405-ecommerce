import { HeaderDivider, HeroSection, Card } from './components';

import Header from './layouts/Header';
import cardImg1 from '@/assets/images/card-1.jpg';
import cardImg2 from '@/assets/images/card-2.jpg';

export default function App() {
  return (
    <div className='bg-white'>
      <Header />
      <div className='relative isolate pt-[4.5rem]'>
        <HeroSection />
        <HeaderDivider />
        <div className='flex justify-center my-16 md:my-24'>
          <div className='container w-xl flex gap-8 items-center justify-center'>
            <Card title='Travel Pillow' description='Portable Luxury Down Pillow: $178' image={cardImg1} />
            <Card title='Sateen Sheet Set' description='Four Colors Starting at $625' image={cardImg2} />
            <Card title='Travel Pillow' description='Portable Luxury Down Pillow: $178' image={cardImg1} />
            <Card title='Sateen Sheet Set' description='Four Colors Starting at $625' image={cardImg2} />
          </div>
        </div>
      </div>
    </div>
  );
}
