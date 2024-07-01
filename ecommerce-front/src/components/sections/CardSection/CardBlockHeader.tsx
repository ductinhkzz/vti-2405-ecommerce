import { ArrowRightCircleIcon } from '@heroicons/react/24/outline';
import { Button } from '@/components';

type CardBlockHeaderProps = {
  title: string;
  btn?: {
    text: string;
    url?: string;
  };
};

const CardBlockHeader = ({ title, btn }: CardBlockHeaderProps) => {
  return (
    <div className='flex justify-center mt-16 mb-8 md:mt-24 md:mb-12'>
      <div className=''>
        <h2 className='text-center text-xl font-medium tracking-wider'>{title}</h2>
        {btn && (
          <p className='mb-2 w-full flex justify-center items-center'>
            <Button color='secondary' variant='text' className='flex gap-x-1 items-center text-xs'>
              {btn.text}
              <ArrowRightCircleIcon className='h-4 w-4 color-gray-900' />
            </Button>
          </p>
        )}
      </div>
    </div>
  );
};

export { CardBlockHeader };
