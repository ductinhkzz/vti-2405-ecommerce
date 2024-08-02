import { ArrowRightCircleIcon } from '@heroicons/react/24/outline';
import clsx from 'clsx';
import { twMerge } from 'tailwind-merge';

import { ICard } from '@/types';
import { Button } from '@/components';

type HeroCardProps = {
  className?: string;
  card: ICard;
};

const HeroCard = ({ className, card }: HeroCardProps) => {
  return (
    <div className={twMerge('grid grid-cols-1 grid-rows-2', className)}>
      <div className='col-start-1 col-end-2 row-start-1 row-end-3'>
        <img src={card.image} alt={card.title} className='w-full brightness-75' />
      </div>
      <div
        className={twMerge(
          'col-start-1 col-end-2 z-10',
          clsx(card.isTextTop ? 'row-start-1 row-end-2' : 'row-start-2 row-end-3 content-end'),
        )}>
        <div className='p-8'>
          <h3 className='text-white uppercase tracking-widest font-medium mb-2'>{card.title}</h3>
          <p className='text-white text-xs max-w-sm mb-8'>{card.description}</p>
          {card.btn && (
            <p>
              <Button variant='text' className='-ms-4 hover:ms-0 flex gap-x-1 items-center'>
                {card.btn?.text}
                <ArrowRightCircleIcon className='h-4 w-4 color-gray-900' />
              </Button>
            </p>
          )}
        </div>
      </div>
    </div>
  );
};

export { HeroCard };
