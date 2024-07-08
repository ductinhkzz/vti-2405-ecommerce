import { UseFormReturn } from 'react-hook-form';

import { OptionType } from '@/types';
import { AddressSchemaType } from '@/helpers';
import { Button, ButtonLoading, Input, Select } from '@/components';
import { Modal } from '@/modals';

export type AddressModalProps = {
  isOpen: boolean;
  isLoading?: boolean;
  countryOptions: OptionType<string>[];
  form: UseFormReturn<AddressSchemaType>;
  type?: string;
  onClose: () => void;
  onSubmit: (data: AddressSchemaType) => void;
};

const AddressModal = ({ onClose, isOpen, countryOptions, form, isLoading, type, onSubmit }: AddressModalProps) => {
  const { register, handleSubmit } = form;
  return (
    <Modal isOpen={isOpen} onClose={onClose} title={type === 'create' ? 'Create address' : 'Add address'}>
      <form className='px-6' onSubmit={handleSubmit(onSubmit)}>
        <div className='grid grid-cols-1 gap-y-4'>
          <div className='grid grid-cols-2 gap-x-4'>
            <Input label='First name' type='text' {...register('first_name')} required />
            <Input label='Last name' type='text' {...register('last_name')} required />
          </div>
          <div className='grid grid-cols-2 gap-x-4'>
            <Input label='Phone' type='text' {...register('phone')} />
            <Input label='Company' type='text' {...register('company')} />
          </div>
          <div className='grid grid-cols-2 gap-x-4'>
            <Input label='Address' type='text' {...register('address_1')} required />
            <Input label='Apartment, suite, etc.' type='text' {...register('address_2')} />
          </div>
          <div className='grid grid-cols-[160px_1fr] gap-x-4'>
            <Input label='Postal code' type='text' {...register('postal_code')} required />
            <Input label='City' type='text' {...register('city')} required />
          </div>
          <div>
            <Input label='Province' type='text' {...register('province')} required />
          </div>
          <div>
            <Select label='Country' {...register('country_code')} options={countryOptions} />
          </div>
          <div className='flex justify-end pb-4 pt-2 gap-x-4'>
            <Button color='secondary' size='sm' variant='outlined' onClick={onClose}>
              Cancel
            </Button>
            <ButtonLoading type='submit' color='secondary' size='sm' isLoading={isLoading}>
              {type === 'create' ? 'Create' : 'Edit'}
            </ButtonLoading>
          </div>
        </div>
      </form>
    </Modal>
  );
};

export { AddressModal };
