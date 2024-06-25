import bgUrl from '@/assets/images/hero-image-1.webp';
import { LogoIcon } from '../Icons';
import { Button } from '../Button';

const HeroSection = () => {
  return (
    <div className='w-full h-[calc(100vh-4.5rem)] grid grid-cols-1 grid-rows-1 bg-gray-950'>
      <div className='col-start-1 col-end-2 row-start-1 row-end-2'>
        <img src={bgUrl} alt='hero' className='object-cover h-full opacity-80' />
      </div>
      <div className='text-center col-start-1 col-end-2 row-start-1 row-end-2 flex justify-center items-center flex-col z-10'>
        <LogoIcon className='fill-white xl:h-28 md:h-20 h-12' />
        <div className='mt-10 flex items-center justify-center gap-x-8 flex-col md:flex-row gap-y-8'>
          <span className='font-semibold text-white'>INNOVATING COMFORT SINCE 1926</span>
          <div className='flex gap-4'>
            <Button>Find your bed</Button>
            <Button variant='text'>
              Learn more <span aria-hidden='true'>→</span>
            </Button>
          </div>
        </div>
      </div>
    </div>
  );
};

export { HeroSection };
