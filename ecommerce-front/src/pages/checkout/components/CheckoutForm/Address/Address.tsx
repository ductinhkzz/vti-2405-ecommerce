import { useEffect, useMemo, useState } from 'react';
import { omit } from 'lodash-es';
import { useSearchParams } from 'react-router-dom';
import { CheckCircleIcon } from '@heroicons/react/24/outline';
import { useForm } from 'react-hook-form';
import { yupResolver } from '@hookform/resolvers/yup';

import { CartWithCheckoutStep, IAddress, ICustomer } from '@/redux/types';
import { Button, ButtonLoading, Divider } from '@/components';
import { checkoutAddressSchema, CheckoutAddressSchemaType } from '@/helpers';
import { compareAddresses } from '@/utils';
import { useRedux } from '@/hooks';
import { useUpdateCartMutation } from '@/redux/api';
import { GlobalStateType } from '@/redux/reducers';
import AddressForm from './ShippingAddressForm';
import AddressInfo from './AddressInfo';
import BillingAddressForm from './BillingAddressForm';
import AddressSelect from './AddressSelect';

type AddressProps = {
  cart: CartWithCheckoutStep;
  customer: ICustomer;
};

const Address = ({ cart, customer }: AddressProps) => {
  const [searchParams, setSearchParams] = useSearchParams();
  const { appSelector } = useRedux();
  const { countryOptions } = appSelector<GlobalStateType>((state) => state.global);
  const [isCompleted, setIsCompleted] = useState(false);
  const [updateCart, { isLoading, isSuccess }] = useUpdateCartMutation();

  const addresses = customer.shipping_addresses ?? [];
  const selectedAddress = useMemo(() => {
    return addresses.find((a) => compareAddresses(a, cart?.shipping_address));
  }, [addresses, cart?.shipping_address]);

  const defaultSameAsBilling = useMemo(
    () =>
      cart?.shipping_address && cart?.billing_address
        ? compareAddresses(cart?.shipping_address, cart?.billing_address)
        : true,
    [cart?.shipping_address, cart?.billing_address],
  );

  const countriesInRegion = useMemo(() => cart?.region.countries.map((c) => c.iso_2), [cart?.region]);

  const addressesInRegion = useMemo(
    () =>
      customer?.shipping_addresses?.filter((a) => a.country_code && countriesInRegion?.includes(a.country_code)) ?? [],
    [customer?.shipping_addresses, countriesInRegion],
  );

  const form = useForm<CheckoutAddressSchemaType>({
    resolver: yupResolver(checkoutAddressSchema),
    values: {
      shippingAddress: {
        first_name: cart?.shipping_address?.first_name ?? '',
        last_name: cart?.shipping_address?.last_name ?? '',
        address_1: cart?.shipping_address?.address_1 ?? '',
        company: cart?.shipping_address?.company ?? '',
        postal_code: cart?.shipping_address?.postal_code ?? '',
        city: cart?.shipping_address?.city ?? '',
        country_code: cart?.shipping_address?.country_code ?? '',
        province: cart?.shipping_address?.province ?? '',
        email: cart?.email ?? '',
        phone: cart?.shipping_address?.phone ?? '',
      },
      sameAsBilling: defaultSameAsBilling,
      billingAddress: {
        first_name: cart?.billing_address?.first_name ?? '',
        last_name: cart?.billing_address?.last_name ?? '',
        address_1: cart?.billing_address?.address_1 ?? '',
        company: cart?.billing_address?.company ?? '',
        postal_code: cart?.billing_address?.postal_code ?? '',
        city: cart?.billing_address?.city ?? '',
        country_code: cart?.billing_address?.country_code ?? '',
        province: cart?.billing_address?.province ?? '',
        phone: cart?.billing_address?.phone ?? '',
      },
    },
  });

  const { handleSubmit, watch } = form;

  const sameAsBilling = watch('sameAsBilling');

  const isOpen = searchParams.get('step') === 'address';

  const onSubmit = handleSubmit(({ sameAsBilling, billingAddress, shippingAddress }) => {
    const newData = {
      billingAddress,
      shippingAddress,
    };
    if (sameAsBilling) {
      newData.billingAddress = shippingAddress;
    }
    setIsCompleted(true);
    updateCart({
      id: cart.id,
      billing_address: omit(newData.billingAddress, 'email') as IAddress,
      shipping_address: omit(newData.shippingAddress, 'email') as unknown as IAddress,
      email: shippingAddress.email,
    });
  });

  const onSelectCart = (val?: string) => {
    if (val) {
      const address = customer?.shipping_addresses?.find((ad) => ad.id === val);
      if (address) {
        setIsCompleted(false);
        updateCart({
          id: cart.id,
          shipping_address: omit(address, [
            'id',
            'created_at',
            'updated_at',
            'country',
            'deleted_at',
            'metadata',
            'customer_id',
          ]) as IAddress,
        });
      }
    }
  };

  const handleEdit = () => {
    setSearchParams({ step: 'address' });
  };

  useEffect(() => {
    if (isSuccess && isCompleted) {
      setSearchParams({ step: 'delivery' });
    }
  }, [isSuccess, isCompleted]);

  return (
    <div className='bg-white'>
      <div className='flex flex-row items-center justify-between mb-6'>
        <h2 className='flex flex-row text-xl font-semibold gap-x-2 items-center'>
          Shipping Address
          {!isOpen && <CheckCircleIcon className='w-5 h-5' />}
        </h2>
        {!isOpen && cart?.shipping_address && (
          <Button
            color='secondary'
            variant='text'
            className='text-ui-fg-interactive hover:text-ui-fg-interactive-hover'
            onClick={handleEdit}>
            Edit
          </Button>
        )}
      </div>
      {isOpen ? (
        <form onSubmit={onSubmit}>
          {customer && addressesInRegion.length > 0 && (
            <AddressSelect customer={customer} selectedAddress={selectedAddress} onSelectCart={onSelectCart} />
          )}
          <AddressForm form={form} options={countryOptions} />
          {!sameAsBilling && <BillingAddressForm form={form} options={countryOptions} />}
          <div className='flex pb-4 pt-2 gap-x-4 mt-4'>
            <ButtonLoading type='submit' color='secondary' variant='contained' isLoading={isLoading}>
              Continue to delivery
            </ButtonLoading>
          </div>
        </form>
      ) : (
        <AddressInfo cart={cart} sameAsSBilling={sameAsBilling} />
      )}
      <Divider className='mt-8' />
    </div>
  );
};

export { Address };
