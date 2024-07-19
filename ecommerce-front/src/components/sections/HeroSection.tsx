import clsx from 'clsx';
import { twMerge } from 'tailwind-merge';

import { ButtonVariant } from '../Button';
import { Container } from '../Container';
import BlockActions from './BlockActions';
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
  actions?: Array<{ url: string; text: string; variant?: ButtonVariant }>;
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
          `hero__theme-${theme}`,
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
            {!isVideo && <img src={url} alt='' className='w-full h-full max-h-[70vh]' />}
          </div>
        ))}
        <div
          className={clsx(
            'col-start-1 col-end-2 row-start-1 row-end-2 justify-start z-10',
            mediaHasLeftOrRight ? 'grid' : 'flex',
            { 'bg-gray-200': theme === 'gray' },
          )}>
          <div
            className={twMerge(
              'justify-self-stretch xl:basis-3/5 2xl:p-48 xl:p-32 lg:p-24 md:p-20 p-4 flex flex-col gap-y-4 justify-center items-center sm:items-start',
              mediaHasLeftOrRight && '2xl:p-36',
            )}>
            {sub_title && <p className='tracking-widest uppercase text-xs'>{sub_title}</p>}
            {title && <h2 className='tracking-wide text-3xl uppercase'>{title}</h2>}
            {description && <p className='text-xs mb-8 text-center sm:text-start'>{description}</p>}
            <BlockActions actions={actions} />
          </div>
        </div>
      </div>
    </Container>
  );
};

export { HeroSection };
