import { useForm } from 'react-hook-form';
import { useEffect } from 'react';

import { useCustomer, useRedux, useToast } from '@/hooks';
import { FormEdit } from './components';
import { Input } from '@/components';
import { AccountSchema } from '@/helpers';
import { useUpdateCustomerMutation } from '@/redux/api';
import { setCustomer } from '@/redux/reducers/authReducer';

const Profile = () => {
  const toast = useToast();
  const customer = useCustomer();
  const { dispatch } = useRedux();
  const [updateCustomer, { isSuccess }] = useUpdateCustomerMutation();
  const { register, handleSubmit } = useForm<AccountSchema>({
    defaultValues: customer,
  });

  const onSubmit = handleSubmit((data) => {
    updateCustomer({
      first_name: data.first_name,
      last_name: data.last_name,
      email: data.email,
      phone: data.phone,
    }).then((res) => {
      dispatch(setCustomer(res.data?.customer));
    });
  });

  useEffect(() => {
    if (isSuccess) {
      toast('Update succesfully !', 'success');
    }
  }, [isSuccess]);

  return (
    <div className='flex-1'>
      <div className='mb-8 flex flex-col gap-y-4'>
        <h1 className='text-2xl font-semibold'>Profile</h1>
        <p>
          View and update your profile information, including your name, email, and phone number. You can also update
          your billing address, or change your password.
        </p>
      </div>
      <div className='flex flex-col gap-y-8 w-full'>
        <FormEdit title='Name' content={customer.full_name} onSubmit={onSubmit}>
          <div className='grid grid-cols-2 gap-x-4 my-4'>
            <Input label='First name' type='text' {...register('first_name')} />
            <Input label='Last name' type='text' {...register('last_name')} />
          </div>
        </FormEdit>
        <FormEdit title='Email' content={customer.email} onSubmit={onSubmit}>
          <div className='my-4'>
            <Input label='Email' type='email' {...register('email')} />
          </div>
        </FormEdit>
        <FormEdit title='Phone' content={customer.phone} onSubmit={onSubmit}>
          <div className='my-4'>
            <Input label='Phone' type='text' {...register('phone')} />
          </div>
        </FormEdit>
        <FormEdit title='Password' description='The password is not shown for security reasons'>
          <div className='grid grid-cols-2 gap-4 my-4'>
            <Input label='Old password' type='text' />
            <Input label='New password' type='text' />
            <Input label='Confirm password' type='text' />
          </div>
        </FormEdit>
        <FormEdit title='Billing Address'>
          <div className='grid grid-cols-1 gap-y-4 my-4'>
            <div className='grid grid-cols-2 gap-x-4'>
              <Input label='First name' type='text' />
              <Input label='Last name' type='text' />
            </div>
            <div>
              <Input label='Company' type='text' />
            </div>
            <div>
              <Input label='Address' type='text' />
            </div>
            <div>
              <Input label='Apartment, suite, etc.' type='text' />
            </div>
            <div className='grid grid-cols-[160px_1fr] gap-x-4'>
              <Input label='Postal code' type='text' />
              <Input label='City' type='text' />
            </div>
            <div>
              <Input label='Country' type='text' />
            </div>
          </div>
        </FormEdit>
      </div>
    </div>
  );
};

export default Profile;
