import React, { useRef } from 'react';
import clsx from 'clsx';
import { useKeenSlider } from 'keen-slider/react';

import { ActionType, ThemeType } from '@/types';
import { BlockActions } from './BlockActions';
import classes from './ImageSliderSection.module.scss';
import { Text } from '../Typography';

export type ImageSliderSectionProps = {
  images?: string[];
  title?: string;
  sub_title?: string;
  description?: string;
  actions?: ActionType[];
  theme?: ThemeType;
};

const DURATION = 3000;

const ImageSliderSection = ({ images = [], title,sub_title, description, actions, theme = 'white' }: ImageSliderSectionProps) => {
  const [currentSlide, setCurrentSlide] = React.useState(0);
  const [progress, setProgress] = React.useState(0);
  const [loaded, setLoaded] = React.useState(false);
  const animationRef = useRef<number>(0);

  const [ref, instanceRef] = useKeenSlider<HTMLDivElement>(
    {
      loop: true,
      initial: 0,
      slideChanged(slider) {
        setCurrentSlide(slider.track.details.rel);
        setProgress(0);
      },
      created() {
        setLoaded(true);
      },
    },
    images.length > 1
      ? [
          (slider) => {
            let timeout: ReturnType<typeof setTimeout>;
            let mouseOver = false;

            function clearNextTimeout() {
              clearTimeout(timeout);
            }
            function nextTimeout() {
              clearTimeout(timeout);
              if (mouseOver) return;
              timeout = setTimeout(() => {
                slider.next();
              }, DURATION);
            }
            slider.on('created', () => {
              slider.container.addEventListener('mouseover', () => {
                mouseOver = true;
                clearNextTimeout();
              });
              slider.container.addEventListener('mouseout', () => {
                mouseOver = false;
                nextTimeout();
              });
              nextTimeout();
            });
            slider.on('dragStarted', clearNextTimeout);
            slider.on('animationEnded', nextTimeout);
            slider.on('updated', nextTimeout);
          },
        ]
      : [],
  );
  React.useEffect(() => {
    const updateProgress = () => {
      setProgress((prevProgress) => {
        if (prevProgress >= 100) {
          return 0;
        }
        return prevProgress + 100 / (DURATION / 16.66); // update every ~16.67ms for 60fps
      });
    };

    if (loaded && instanceRef.current) {
      if (animationRef.current) {
        cancelAnimationFrame(animationRef.current);
      }
      const animate = () => {
        updateProgress();
        animationRef.current = requestAnimationFrame(animate);
      };
      animationRef.current = requestAnimationFrame(animate);
    }

    return () => {
      if (animationRef.current) {
        cancelAnimationFrame(animationRef.current);
      }
    };
  }, [loaded, currentSlide]);
  return (
    <div className='flex justify-center items-center'>
      <div className={clsx('w-full relative grid grid-cols-2 grid-rows-1 py-24', `theme-${theme}`)}>
        <div className='col-start-1 row-start-1 flex flex-col justify-center items-center px-16 py-4'>
          <div className='p-20'>
            {sub_title && <Text uppercase size='xs' tracking='wider' className='mb-2'>{sub_title}</Text>}
            {title && <Text uppercase size='xl' tracking='wide' className='mb-4'>{title}</Text>}
            {description && <Text size='xs' className='mb-8 text-center sm:text-start'>{description}</Text>}
            <BlockActions actions={actions} />
          </div>
        </div>
        <div className='col-start-2 row-start-1 flex items-center justify-center'>
          <div ref={ref} className='keen-slider'>
            {images.map((image) => (
              <div className='keen-slider__slide w-full h-full' key={image}>
                <img src={image} alt='' className='w-full h-full object-cover aspect-video' />
              </div>
            ))}
          </div>
          {loaded && instanceRef.current && images.length > 1 && (
            <div className='flex justify-center gap-x-2 absolute z-10 bottom-20'>
              {[...Array(instanceRef.current.track.details.slides.length).keys()].map((idx) => {
                return (
                  <button
                    key={`dot-${idx}`}
                    onClick={() => {
                      instanceRef.current?.moveToIdx(idx);
                    }}
                    style={{
                      ...(currentSlide === idx && ({ '--slider-progress': `${progress}%` } as React.CSSProperties)),
                    }}
                    className={clsx(classes['progress'], currentSlide === idx && classes['active'])}></button>
                );
              })}
            </div>
          )}
        </div>
      </div>
    </div>
  );
};

export { ImageSliderSection };
