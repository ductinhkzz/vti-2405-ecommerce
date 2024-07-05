import { LoadingIcon } from './Icons';

const LoadingOverlay = () => {
  return (
    <div className='absolute w-screen h-screen flex items-center justify-center top-0 bg-gray-400 z-50 left-0'>
      <LoadingIcon className='h-8' />
    </div>
  );
};

export { LoadingOverlay };
