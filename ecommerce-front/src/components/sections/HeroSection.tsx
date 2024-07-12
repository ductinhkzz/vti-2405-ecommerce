import clsx from 'clsx';
import { Button } from '../Button';
import { twMerge } from 'tailwind-merge';
import { Container } from '../Container';

interface HeroSectionProps {
  btnText?: string;
  description?: string;
  title?: string;
  subTitle?: string;
  mediaList?: Array<{
    url: string;
    isVideo?: boolean;
    postion?: 'left' | 'right' | 'full';
  }>;
  theme?: 'gray';
}

const HeroSection = ({ btnText, description, title, subTitle, mediaList = [], theme }: HeroSectionProps) => {
  const mediaHasLeftOrRight = mediaList.some((item) => item.postion === 'left' || item.postion === 'right');
  const mediaHasFull = mediaList.some((item) => !item.postion || item.postion === 'full');

  return (
    <Container>
      <div
        className={clsx(
          'w-full grid grid-rows-1',
          {
            'grid-cols-2': mediaList.length === 2 || mediaHasLeftOrRight,
            'grid-cols-1': mediaHasFull,
          },
          theme === 'gray' ? 'text-gray-900' : 'text-white',
        )}>
        {mediaList.map(({ url, postion = 'full', isVideo = false }) => (
          <div
            key={url}
            className={clsx(
              'row-start-1 row-end-2',
              {
                'col-start-1 col-end-2': postion === 'left',
                'col-start-2 col-end-3': postion === 'right',
              },
              !['left', 'right'].includes(postion) && 'w-full col-start-1 col-end-2',
            )}>
            {isVideo && <video src={url} autoPlay muted loop className='w-full h-full' />}
            {!isVideo && <img src={url} alt='' className='w-full h-full' />}
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
              'h-full w-full justify-self-stretch xl:basis-3/5 2xl:p-48 xl:p-32 lg:p-24 md:p-20 p-4 flex flex-col gap-y-4 justify-center items-center sm:items-start',
              mediaHasLeftOrRight && '2xl:p-36',
            )}>
            <p className='tracking-widest uppercase text-xs'>{subTitle}</p>
            <h2 className='tracking-wide text-3xl uppercase'>{title}</h2>
            <p className='text-xs mb-8 text-center sm:text-start'>{description}</p>
            {btnText && (
              <p>
                <Button variant='outlined' className='text-xs' color={theme === 'gray' ? 'secondary' : 'primary'}>
                  {btnText}
                </Button>
              </p>
            )}
          </div>
        </div>
      </div>
    </Container>
  );
};

export { HeroSection };
