import { PlusIcon } from '@heroicons/react/24/outline';

import CardContainer from './CardContainer';

const CreateAddressCard = () => {
  return (
    <CardContainer>
      <div className='h-full flex flex-col justify-between cursor-pointer'>
        <h1 className='font-medium'>New address</h1>
        <div>
          <PlusIcon className='w-5 h-5' />
        </div>
      </div>
    </CardContainer>
  );
};

export { CreateAddressCard };
