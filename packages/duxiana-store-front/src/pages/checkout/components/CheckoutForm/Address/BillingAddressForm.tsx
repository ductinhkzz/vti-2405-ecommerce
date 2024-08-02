import { UseFormReturn } from 'react-hook-form';

import { CheckoutAddressSchemaType } from '@/helpers';
import { OptionType } from '@/types';
import { Input, Select } from '@/components';

type BillingAddressFormProps = {
  form: UseFormReturn<CheckoutAddressSchemaType, any, undefined>;
  options: OptionType<string>[];
};

const BillingAddressForm = ({ form, options }: BillingAddressFormProps) => {
  const { register } = form;
  return (
    <>
      <h2 className='flex flex-row text-xl font-semibold mt-12 mb-4'>Billing Address</h2>
      <div className='grid grid-cols-1 gap-y-4'>
        <div className='grid grid-cols-2 gap-x-4'>
          <Input label='First name' type='text' {...register('billingAddress.first_name')} required />
          <Input label='Last name' type='text' {...register('billingAddress.last_name')} required />
        </div>
        <div className='grid grid-cols-2 gap-x-4'>
          <Input label='Address' type='text' {...register('billingAddress.address_1')} required />
          <Input label='Company' type='text' {...register('billingAddress.company')} />
        </div>
        <div className='grid grid-cols-2 gap-x-4'>
          <Input label='Postal code' type='text' {...register('billingAddress.postal_code')} required />
          <Input label='City' type='text' {...register('billingAddress.city')} required />
        </div>
        <div className='grid grid-cols-2 gap-x-4'>
          <Select label='Country' {...register('billingAddress.country_code')} options={options} />
          <Input label='Province' type='text' {...register('billingAddress.province')} required />
        </div>
        <div className='grid grid-cols-2 gap-x-4'>
          <Input label='Phone' type='text' {...register('billingAddress.phone')} />
        </div>
      </div>
    </>
  );
};

export default BillingAddressForm;
