import { twMerge } from 'tailwind-merge';
import { ArrowRightCircleIcon } from '@heroicons/react/24/outline';

import { Button } from '../Button';
import { ActionType } from '@/types';

type BlockActionsProps = {
  actions?: ActionType[];
  className?: string;
};

const BlockActions = ({ actions = [], className }: BlockActionsProps) => {
  return (
    <p className={twMerge('flex gap-x-2', className)}>
      {actions.map(({ text, variant = 'outlined', color = 'secondary', arrowIcon }) => (
        <Button
          key={text}
          variant={variant}
          className='text-xs flex items-center justify-center gap-x-1'
          color={color}
          size='sm'>
          {text}
          {arrowIcon && <ArrowRightCircleIcon className='w-4 h-4' />}
        </Button>
      ))}
    </p>
  );
};

export { BlockActions };
