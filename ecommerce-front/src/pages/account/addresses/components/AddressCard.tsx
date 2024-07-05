import { PencilSquareIcon, TrashIcon } from '@heroicons/react/24/outline';
import CardContainer from './CardContainer';

type AddressCardProps = {
  name: string;
  company: string;
  address_1: string;
  address_2: string;
  country: string;
};

const AddressCard = ({ name, company, address_1, address_2, country }: AddressCardProps) => {
  return (
    <CardContainer>
      <div className='h-full flex flex-col justify-between'>
        <h1 className='font-medium'>{name}</h1>
        <div>
          <p className='text-sm'>{company}</p>
          <p className='text-sm'>
            {address_1}, {address_2}
          </p>
          <p className='text-sm'>{country}</p>
        </div>
        <div className='flex gap-x-4'>
          <button className='flex items-center gap-x-1 text-sm'>
            <PencilSquareIcon className='h-4 w4' />
            Edit
          </button>
          <button className='flex items-center gap-x-1 text-sm'>
            <TrashIcon className='h-4 w-4' />
            Remove
          </button>
        </div>
      </div>
    </CardContainer>
  );
};

export { AddressCard };
