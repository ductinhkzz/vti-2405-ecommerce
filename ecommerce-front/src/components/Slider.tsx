import { useKeenSlider } from 'keen-slider/react';
import { MouseEvent, ReactNode, useMemo, useState } from 'react';
import { ChevronRightIcon, ChevronLeftIcon } from '@heroicons/react/24/outline';

import { useWindowSize } from '@/hooks';
import { BREAK_POINTS } from '@/constants';
import { Button } from './Button';
import { twMerge } from 'tailwind-merge';
import { Container } from './Container';

type SliderProps = {
  children: ReactNode;
  perView?: number;
  hideAction?: boolean;
};

const Slider = ({ children, perView = 4, hideAction = false }: SliderProps) => {
  const windowSize = useWindowSize();
  const [currentSlide, setCurrentSlide] = useState(0);
  const [loaded, setLoaded] = useState(false);

  const _perView = useMemo(() => {
    if (windowSize.width <= BREAK_POINTS.sm) {
      return 1;
    }

    if (windowSize.width <= BREAK_POINTS.md) {
      return 2;
    }

    if (windowSize.width <= BREAK_POINTS.xl) {
      return 3;
    }

    return perView;
  }, [windowSize.width, perView]);

  const [sliderRef, instanceRef] = useKeenSlider({
    initial: 0,
    slides: {
      perView: _perView,
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
    <Container className={twMerge('mb-16 md:mb-24', !hideAction ? '-mt-8 md:-mt-12' : 'mt-16 md:mt-20')}>
      <div className='container sm:w-xl w-screen block px-2'>
        {loaded && instanceRef.current && !hideAction && (
          <div className='justify-end gap-x-2 mb-2 px-2 hidden sm:flex'>
            <Button color='secondary' className='p-2 rounded-full' onClick={onClickPre} disabled={currentSlide === 0}>
              <ChevronLeftIcon className='h-5 w-5' />
            </Button>
            <Button
              color='secondary'
              className='p-2 rounded-full'
              onClick={onClickNext}
              disabled={currentSlide === instanceRef.current.track.details?.slides?.length - perView}>
              <ChevronRightIcon className='h-5 w-5' />
            </Button>
          </div>
        )}
        <div ref={sliderRef} className='keen-slider'>
          {children}
        </div>
      </div>
    </Container>
  );
};

export { Slider };
