import clsx from 'clsx';
import { twMerge } from 'tailwind-merge';

import { Container } from '../Container';
import { BlockActions } from './BlockActions';
import { ActionType } from '@/types';
import { Text } from '../Typography';
interface HeroSectionProps {
  description?: string;
  title?: string;
  sub_title?: string;
  medias?: Array<{
    url: string;
    isVideo?: boolean;
    position?: 'left' | 'right' | 'full';
  }>;
  theme?: 'gray' | 'warm-gray' | 'white' | 'black';
  actions?: ActionType[];
}

const HeroSection = ({
  description,
  title,
  sub_title,
  medias = [],
  theme = 'white',
  actions = [],
}: HeroSectionProps) => {
  const mediaHasLeftOrRight = medias.some((item) => item.position === 'left' || item.position === 'right');
  const mediaHasFull = medias.some((item) => !item.position || item.position === 'full');

  return (
    <Container>
      <div
        className={clsx(
          'w-full grid grid-rows-1',
          {
            'grid-cols-2': medias.length === 2 || mediaHasLeftOrRight,
            'grid-cols-1': mediaHasFull,
          },
          `theme-${theme}`,
        )}>
        {medias.map(({ url, position = 'full', isVideo = false }) => (
          <div
            key={url}
            className={clsx(
              'row-start-1 row-end-2 relative',
              {
                'col-start-1 col-end-2': position === 'left',
                'col-start-2 col-end-3': position === 'right',
              },
              !['left', 'right'].includes(position) && 'w-full col-start-1 col-end-2',
              'hero__image',
            )}>
            {isVideo && <video src={url} autoPlay muted loop className='w-full h-full' />}
            {!isVideo && (
              <img
                src={url}
                alt=''
                className={clsx('w-full h-full max-h-[70vh] object-cover', theme === 'black' && 'brightness-75')}
              />
            )}
          </div>
        ))}
        <div
          className={clsx(
            'col-start-1 col-end-2 row-start-1 row-end-2 justify-start z-10',
            mediaHasLeftOrRight ? 'grid' : 'flex',
          )}>
          <div
            className={twMerge(
              'justify-self-stretch xl:basis-3/5 2xl:p-48 xl:p-32 lg:p-24 md:p-20 p-4 flex flex-col gap-y-4 justify-center items-center sm:items-start',
              mediaHasLeftOrRight && '2xl:p-36',
            )}>
            {sub_title && (
              <Text uppercase size='xs' tracking='wider' className='mb-2' color={theme === 'black' ? 'light' : 'dark'}>
                {sub_title}
              </Text>
            )}
            {title && (
              <Text uppercase size='xl' tracking='wide' className='mb-4' color={theme === 'black' ? 'light' : 'dark'}>
                {title}
              </Text>
            )}
            {description && (
              <Text size='xs' className='mb-8 text-center sm:text-start' color={theme === 'black' ? 'light' : 'dark'}>
                {description}
              </Text>
            )}
            <BlockActions actions={actions} />
          </div>
        </div>
      </div>
    </Container>
  );
};

export { HeroSection };
