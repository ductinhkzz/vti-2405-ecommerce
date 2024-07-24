import { useForm } from 'react-hook-form';
import { yupResolver } from '@hookform/resolvers/yup';
import { useEffect } from 'react';

import { useCRUD, useCustomer, usePageTitle, useRedux, useToast } from '@/hooks';
import { addressSchema, AddressSchemaType } from '@/helpers';
import { useAddShippingAddressMutation, useDeleteAddressMutation, useUpdateShippingAddressMutation } from '@/redux/api';
import { AddressCard, CreateAddressCard } from './components';
import { PageHeader } from '../components';
import { WarningModal } from '@/modals';
import { Button, ButtonLoading } from '@/components';
import { AddressModal } from './modals';

const Addresses = () => {
  const toast = useToast();
  const customer = useCustomer();
  const { appSelector } = useRedux();
  const { countryOptions } = appSelector((state) => state.global);
  const { onClose, onOpen, type = '', id } = useCRUD({ path: '/account/addresses' });

  const address = customer?.shipping_addresses?.find((add) => add.id === id);

  const [addShippingAddress, { isLoading, isError, isSuccess }] = useAddShippingAddressMutation();
  const [updateShippingAddress, { isLoading: isUpdateLoading, isError: isUpdateError, isSuccess: isUpdateSuccess }] =
    useUpdateShippingAddressMutation();
  const [deleteAddress, { isLoading: isDeleteLoading, isError: isDeleteError, isSuccess: isDeleteSuccess }] =
    useDeleteAddressMutation();

  const form = useForm({
    resolver: yupResolver(addressSchema),
    values: {
      first_name: address?.first_name ?? '',
      last_name: address?.last_name ?? '',
      phone: address?.phone ?? '',
      company: address?.company ?? '',
      address_1: address?.address_1 ?? '',
      address_2: address?.address_2 ?? '',
      postal_code: address?.address_2 ?? '',
      city: address?.city ?? '',
      province: address?.province ?? '',
      country_code: address?.country_code ?? '',
    },
  });

  const onSubmit = (data: AddressSchemaType) => {
    if (type === 'create') {
      addShippingAddress({ address: data });
    } else if (type === 'edit') {
      updateShippingAddress({ ...data, id });
    }
  };

  const onOpenCreateModal = () => {
    onOpen('create');
  };

  const onClickAction = (type: 'edit' | 'delete', id: string) => {
    onOpen(type, id);
  };

  const handleClose = () => {
    onClose();
    form.reset();
  };

  const handleDeleteAddress = () => {
    !!id && deleteAddress({ id });
  };

  usePageTitle('Addresses | Duxiana');

  useEffect(() => {
    if (isSuccess) {
      toast('Add shipping address successfully!', 'success');
      handleClose();
    }
  }, [isSuccess]);

  useEffect(() => {
    if (isError) {
      toast('Add shipping address failed!', 'error');
    }
  }, [isError]);

  useEffect(() => {
    if (isUpdateSuccess) {
      toast('Update shipping address successfully!', 'success');
      handleClose();
    }
  }, [isUpdateSuccess]);

  useEffect(() => {
    if (isUpdateError) {
      toast('Add shipping address failed!', 'error');
    }
  }, [isUpdateError]);

  useEffect(() => {
    if (isDeleteSuccess) {
      toast('Delete shipping address successfully!', 'success');
      handleClose();
    }
  }, [isDeleteSuccess]);

  useEffect(() => {
    if (isDeleteError) {
      toast('Delete shipping address failed!', 'error');
      handleClose();
    }
  }, [isDeleteError]);

  return (
    <div className='flex-1'>
      <PageHeader
        title='Shipping Addresses'
        description='View and update your shipping addresses, you can add as many as you like. Saving your addresses will make them available during checkout.'
      />
      <div className='w-full'>
        <div className='grid grid-cols-2 gap-4'>
          <CreateAddressCard onOpen={onOpenCreateModal} />
          {customer.shipping_addresses?.map((address) => (
            <AddressCard key={address.id} {...address} onClickAction={onClickAction} />
          ))}
        </div>
      </div>
      <AddressModal
        type={type}
        form={form}
        countryOptions={countryOptions}
        isLoading={isLoading || isUpdateLoading}
        isOpen={['create', 'edit'].includes(type)}
        onSubmit={onSubmit}
        onClose={handleClose}
      />
      <WarningModal isOpen={type === 'delete'} onClose={onClose} title='Delete address'>
        <p className='text-md'>Deleting address. Are you sure?</p>
        <div className='flex justify-end pb-4 pt-2 gap-x-4 w-full mt-8'>
          <Button color='secondary' size='sm' variant='outlined' onClick={onClose}>
            Cancel
          </Button>
          <ButtonLoading onClick={handleDeleteAddress} color='secondary' size='sm' isLoading={isDeleteLoading}>
            Delete
          </ButtonLoading>
        </div>
      </WarningModal>
    </div>
  );
};

export default Addresses;
