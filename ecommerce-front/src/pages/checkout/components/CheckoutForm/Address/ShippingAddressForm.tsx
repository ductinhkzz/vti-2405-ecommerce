import { UseFormReturn } from 'react-hook-form';

import { Input, Select } from '@/components';
import { CheckoutAddressSchemaType } from '@/helpers';
import { OptionType } from '@/types';

type ShippingAddressFormProps = {
  form: UseFormReturn<CheckoutAddressSchemaType, any, undefined>;
  options: OptionType<string>[];
};

const ShippingAddressForm = ({ form, options }: ShippingAddressFormProps) => {
  const { register } = form;
  return (
    <div className='grid grid-cols-1 gap-y-4'>
      <div className='grid grid-cols-2 gap-x-4'>
        <Input label='First name' type='text' {...register('shippingAddress.first_name')} required />
        <Input label='Last name' type='text' {...register('shippingAddress.last_name')} required />
      </div>
      <div className='grid grid-cols-2 gap-x-4'>
        <Input label='Address' type='text' {...register('shippingAddress.address_1')} required />
        <Input label='Company' type='text' {...register('shippingAddress.company')} />
      </div>
      <div className='grid grid-cols-2 gap-x-4'>
        <Input label='Postal code' type='text' {...register('shippingAddress.postal_code')} required />
        <Input label='City' type='text' {...register('shippingAddress.city')} required />
      </div>
      <div className='grid grid-cols-2 gap-x-4'>
        <Select label='Country' {...register('shippingAddress.country_code')} options={options} />
        <Input label='Province' type='text' {...register('shippingAddress.province')} required />
      </div>
      <div>
        <Input
          label='Billing address same as shipping address'
          type='checkbox'
          className='flex flex-row-reverse justify-end items-center gap-x-2'
          {...register('sameAsBilling')}
        />
      </div>
      <div className='grid grid-cols-2 gap-x-4'>
        <Input label='Email' type='email' {...register('shippingAddress.email')} />
        <Input label='Phone' type='text' {...register('shippingAddress.phone')} />
      </div>
    </div>
  );
};

export default ShippingAddressForm;
