import { ArrowRightCircleIcon, ChevronRightIcon, ChevronLeftIcon } from '@heroicons/react/24/outline';
import { useKeenSlider } from 'keen-slider/react';
import { MouseEvent, useMemo, useState } from 'react';

import { HeaderDivider, HeroBanerSection, Card, Button, HeroSection } from '@/components';
import cardImg1 from '@/assets/images/card-1.jpg';
import cardImg2 from '@/assets/images/card-2.jpg';
import videoUrl from '@/assets/images/hero-video.mp4';
import { useWindowSize } from '@/hooks';

const BREAK_POINT = {
  xl: 1280,
  md: 768,
  sm: 640,
};

const Home = () => {
  const windowSize = useWindowSize();
  const [currentSlide, setCurrentSlide] = useState(0);
  const [loaded, setLoaded] = useState(false);

  const perView = useMemo(() => {
    if (windowSize.width <= BREAK_POINT.sm) {
      return 1;
    }

    if (windowSize.width <= BREAK_POINT.md) {
      return 2;
    }

    if (windowSize.width <= BREAK_POINT.xl) {
      return 3;
    }

    return 4;
  }, [windowSize.width]);

  const [sliderRef, instanceRef] = useKeenSlider({
    initial: 0,
    slides: {
      perView,
    },
    slideChanged(slider) {
      setCurrentSlide(slider.track.details.rel);
    },
    created() {
      setLoaded(true);
    },
  });

  const onClickPre = (e: MouseEvent<HTMLButtonElement>) => {
    e.stopPropagation();
    instanceRef.current?.prev();
  };

  const onClickNext = (e: MouseEvent<HTMLButtonElement>) => {
    e.stopPropagation();
    instanceRef.current?.next();
  };

  return (
    <>
      <HeroBanerSection />
      <HeaderDivider />
      <div className='flex justify-center my-16 md:my-24'>
        <div className='flex flex-col justify-center items-center gap-2'>
          <h2 className='text-extrabold text-lg tracking-widest'>The DUXIANA Online Marketplace</h2>
          <p className='mb-2 w-full flex justify-center items-center'>
            <Button color='secondary' variant='text' className='flex gap-x-1 items-center text-xs'>
              View all
              <ArrowRightCircleIcon className='h-4 w-4 color-gray-900' />
            </Button>
          </p>
          <div className='container sm:w-xl w-screen block'>
            {loaded && instanceRef.current && (
              <div className='flex justify-end gap-x-2 px -2'>
                <Button
                  color='secondary'
                  className='p-2 rounded-full'
                  onClick={onClickPre}
                  disabled={currentSlide === 0}
                >
                  <ChevronLeftIcon className='h-5 w-5' />
                </Button>
                <Button
                  color='secondary'
                  className='p-2 rounded-full'
                  onClick={onClickNext}
                  disabled={currentSlide === instanceRef.current.track.details.slides.length - perView}
                >
                  <ChevronRightIcon className='h-5 w-5' />
                </Button>
              </div>
            )}
            <div ref={sliderRef} className='keen-slider'>
              <div className='keen-slider__slide sm:p-2'>
                <Card title='Travel Pillow' description='Portable Luxury Down Pillow: $178' image={cardImg1} />
              </div>
              <div className='keen-slider__slide sm:p-2'>
                <Card title='Sateen Sheet Set' description='Four Colors Starting at $625' image={cardImg2} />
              </div>
              <div className='keen-slider__slide sm:p-2'>
                <Card title='Travel Pillow' description='Portable Luxury Down Pillow: $178' image={cardImg1} />
              </div>
              <div className='keen-slider__slide sm:p-2'>
                <Card title='Sateen Sheet Set' description='Four Colors Starting at $625' image={cardImg2} />
              </div>
              <div className='keen-slider__slide sm:p-2'>
                <Card title='Travel Pillow' description='Portable Luxury Down Pillow: $178' image={cardImg1} />
              </div>
              <div className='keen-slider__slide sm:p-2'>
                <Card title='Sateen Sheet Set' description='Four Colors Starting at $625' image={cardImg2} />
              </div>
            </div>
          </div>
        </div>
      </div>
      <HeroSection
        url={videoUrl}
        isVideo
        subTitle='New partner'
        title='Tottenham Hotspur'
        btnText='Read more about the collaboration'
        description={`We are proud to announce that DUXIANA has become Tottenham Hotspur Football Club's official bed supplier. Tottenham Hotspur has decided to put their trust in The DUX Bed as they believe that our products are more than just a bed, but more a sleep system and a vehicle for well-being.`}
      />
    </>
  );
};

export default Home;
