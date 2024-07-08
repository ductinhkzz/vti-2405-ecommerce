import { PencilSquareIcon, TrashIcon } from '@heroicons/react/24/outline';

import { IAddress } from '@/redux/types';
import { IconButton } from '@/components';
import CardContainer from './CardContainer';

interface AddressCardProps extends IAddress {
  onClickAction: (type: 'edit' | 'delete', id: string) => void;
}

const AddressCard = ({
  id,
  first_name,
  last_name,
  company,
  address_1,
  address_2,
  city,
  postal_code,
  province,
  country_code,
  onClickAction,
}: AddressCardProps) => {
  const name = `${first_name} ${last_name}`.trim();

  const handleEdit = () => {
    onClickAction('edit', id);
  };

  const handleRemove = () => {
    onClickAction('delete', id);
  };

  return (
    <CardContainer>
      <div className='h-full flex flex-col justify-between'>
        <h1 className='font-medium text-md'>{name}</h1>
        <div>
          <p className='text-sm'>{company}</p>
          <p className='text-sm'>
            {address_1}, {address_2}
          </p>
          <p className='text-xs'>
            {postal_code}, {city}
          </p>
          <p className='text-xs'>
            {province}, {country_code?.toLocaleUpperCase()}
          </p>
        </div>
        <div className='flex gap-x-4'>
          <IconButton onClick={handleEdit}>
            <PencilSquareIcon className='h-3 w-3' />
            Edit
          </IconButton>
          <IconButton onClick={handleRemove}>
            <TrashIcon className='h-3 w-3' />
            Remove
          </IconButton>
        </div>
      </div>
    </CardContainer>
  );
};

export { AddressCard };
