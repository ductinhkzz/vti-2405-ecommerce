import { useKeenSlider } from 'keen-slider/react';
import { MouseEvent, useMemo, useState } from 'react';
import { ArrowRightCircleIcon, ChevronRightIcon, ChevronLeftIcon } from '@heroicons/react/24/outline';

import type { ICard } from '@/types';
import { useWindowSize } from '@/hooks';
import { BREAK_POINTS } from '@/constants';
import { Button } from '../../Button';
import { Card } from './Card';

type CardBlockSectionProps = {
  cards: ICard[];
};

const CardSliderSection = ({ cards }: CardBlockSectionProps) => {
  const windowSize = useWindowSize();
  const [currentSlide, setCurrentSlide] = useState(0);
  const [loaded, setLoaded] = useState(false);

  const perView = useMemo(() => {
    if (windowSize.width <= BREAK_POINTS.sm) {
      return 1;
    }

    if (windowSize.width <= BREAK_POINTS.md) {
      return 2;
    }

    if (windowSize.width <= BREAK_POINTS.xl) {
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
    <div className='flex justify-center my-16 md:my-24'>
      <div className='flex flex-col justify-center items-center gap-2'>
        <h2 className='text-extrabold text-lg tracking-widest'>The DUXIANA Online Marketplace</h2>
        <p className='mb-2 w-full flex justify-center items-center'>
          <Button color='secondary' variant='text' className='flex gap-x-1 items-center text-xs'>
            View all
            <ArrowRightCircleIcon className='h-4 w-4 color-gray-900' />
          </Button>
        </p>
        <div className='container sm:w-xl w-screen block px-2'>
          {loaded && instanceRef.current && (
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
            {cards.map((card) => (
              <div key={card.id} className='keen-slider__slide sm:p-2'>
                <Card {...card} />
              </div>
            ))}
          </div>
        </div>
      </div>
    </div>
  );
};

export { CardSliderSection };
