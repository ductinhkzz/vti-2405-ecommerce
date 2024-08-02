import { PlusIcon } from '@heroicons/react/24/outline';

import CardContainer from './CardContainer';

type CreateAddressCardProps = {
  onOpen: () => void;
};

const CreateAddressCard = ({ onOpen }: CreateAddressCardProps) => {
  return (
    <CardContainer>
      <div role='none' className='h-full flex flex-col justify-between cursor-pointer' onClick={onOpen}>
        <h1 className='font-medium'>New address</h1>
        <div>
          <PlusIcon className='w-5 h-5' />
        </div>
      </div>
    </CardContainer>
  );
};

export { CreateAddressCard };
