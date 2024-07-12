import { useForm } from 'react-hook-form';
import { useEffect } from 'react';
import { yupResolver } from '@hookform/resolvers/yup';
import { omit } from 'lodash-es';

import { useCustomer, usePageTitle, useRedux, useToast } from '@/hooks';
import { Input, Select } from '@/components';
import { accountSchema } from '@/helpers';
import { useLoginMutation, useUpdateCustomerMutation, useGetRegionQuery } from '@/redux/api';
import { setCustomer } from '@/redux/reducers';
import { IAddress } from '@/redux/types';
import { FormEdit } from './components';
import { PageHeader } from '../components';

const Profile = () => {
  const toast = useToast();
  const customer = useCustomer();
  const { dispatch, appSelector } = useRedux();
  const { countryOptions } = appSelector((state) => state.global);

  useGetRegionQuery(undefined, {
    skip: countryOptions.length !== 0,
  });

  const [updateCustomer, { isSuccess }] = useUpdateCustomerMutation();
  const [auth] = useLoginMutation();
  const {
    register,
    handleSubmit,
    reset,
    formState: { errors, isValid },
  } = useForm({
    values: {
      first_name: customer.first_name ?? '',
      last_name: customer.last_name ?? '',
      email: customer.email ?? '',
      phone: customer.phone ?? '',
      billing_address: omit(customer.billing_address, [
        'id',
        'created_at',
        'metadata',
        'updated_at',
        'deleted_at',
        'customer_id',
      ]) as Omit<IAddress, 'id' | 'created_at' | 'updated_at' | 'deleted_at'>,
    },
    resolver: yupResolver(accountSchema),
  });

  const onSubmit = handleSubmit((data) => {
    if (data.password && data.old_password && customer.email) {
      auth({ password: data.old_password, email: customer.email }).then((res) => {
        if (res.error) {
          toast('Old password is incorrect', 'error');
          return;
        }

        updateCustomer({
          password: data.password,
        });
      });
      return;
    }

    updateCustomer({
      first_name: data.first_name,
      last_name: data.last_name,
      email: data.email,
      phone: data.phone,
      billing_address: data.billing_address,
    }).then((res) => {
      dispatch(setCustomer(res.data?.customer));
    });
  });

  usePageTitle('Profile | Duxiana');

  useEffect(() => {
    if (isSuccess) {
      toast('Update succesfully !', 'success');
      reset();
    }
  }, [isSuccess]);

  return (
    <div className='flex-1'>
      <PageHeader
        title='Profile'
        description=' View and update your profile information, including your name, email, and phone number. You can also update
          your billing address, or change your password.'
      />
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
        <FormEdit
          title='Password'
          description='The password is not shown for security reasons'
          onSubmit={onSubmit}
          disabled={!isValid}>
          <div className='grid grid-cols-2 gap-4 my-4'>
            <Input label='Old password' type='password' {...register('old_password')} />
            <Input label='New password' type='password' {...register('new_password')} />
            <Input
              label='Confirm password'
              type='password'
              {...register('password')}
              error={errors.password?.message}
            />
          </div>
        </FormEdit>
        <FormEdit title='Billing Address' onSubmit={onSubmit}>
          <div className='grid grid-cols-1 gap-y-4 my-4'>
            <div className='grid grid-cols-2 gap-x-4'>
              <Input label='First name' type='text' {...register('billing_address.first_name')} />
              <Input label='Last name' type='text' {...register('billing_address.last_name')} />
            </div>
            <div className='grid grid-cols-2 gap-x-4'>
              <Input label='Phone' type='text' {...register('billing_address.phone')} />
              <Input label='Company' type='text' {...register('billing_address.company')} />
            </div>
            <div className='grid grid-cols-2 gap-x-4'>
              <Input label='Address' type='text' {...register('billing_address.address_1')} />
              <Input label='Apartment, suite, etc.' type='text' {...register('billing_address.address_2')} />
            </div>
            <div className='grid grid-cols-[160px_1fr] gap-x-4'>
              <Input label='Postal code' type='text' {...register('billing_address.postal_code')} />
              <Input label='City' type='text' {...register('billing_address.city')} />
            </div>
            <div>
              <Select label='Country' {...register('billing_address.country_code')} options={countryOptions} />
            </div>
          </div>
        </FormEdit>
      </div>
    </div>
  );
};

export default Profile;
