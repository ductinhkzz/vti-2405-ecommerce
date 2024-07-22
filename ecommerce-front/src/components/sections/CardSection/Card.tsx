import { ArrowRightCircleIcon } from '@heroicons/react/24/outline';
import { twMerge } from 'tailwind-merge';

import { ICard } from '@/types';
import { Button } from '../../Button';

interface CardProps extends ICard {
  className?: string;
}

const Card = ({ title, description, image, className, btn }: CardProps) => {
  return (
    <div className={twMerge('group/item hover:bg-gray-200 w-full', className)}>
      <div className='w-full'>
        <img src={image} alt={title} className='w-screen sm:w-auto' />
      </div>
      <div className='p-4 flex flex-col gap-2 justify-start items-start'>
        <h3 className='uppercase font-medium tracking-widest text-sm'>{title}</h3>
        <p className='text-sm font-thin tracking-wide'>{description}</p>
        {btn && (
          <Button
            color='secondary'
            variant='text'
            className='ps-0 text-xs flex gap-x-1 mt-6 group-hover/item:ps-4 group-hover/item:border-gray-900'>
            {btn.text}
            <ArrowRightCircleIcon className='h-4 w-4 color-gray-900' />
          </Button>
        )}
      </div>
    </div>
  );
};

export { Card };
