import { useSearchParams } from 'react-router-dom';
import { CheckCircleIcon } from '@heroicons/react/24/outline';

import { CartWithCheckoutStep, IShippingOption } from '@/redux/types';
import { useAddShippingMethodMutation } from '@/redux/api';
import { Button, ButtonLoading, Divider } from '@/components';
import SelectMethods from './SelectMethods';
import DeliveryInfo from './DeliveryInfo';

type ShippingProps = {
  shippingOptions: IShippingOption[];
  cart: CartWithCheckoutStep;
};

const Shipping = ({ shippingOptions, cart }: ShippingProps) => {
  const [searchParams, setSearchParams] = useSearchParams();
  const [addShippingMethod, { isLoading }] = useAddShippingMethodMutation();
  const isOpen = searchParams.get('step') === 'delivery';
  const handleEdit = () => {
    setSearchParams({ step: 'delivery' });
  };

  const onChange = (val?: string) => {
    if (val) {
      addShippingMethod({
        cart_id: cart.id,
        option_id: val,
      });
    }
  };

  const onComplete = () => {
    setSearchParams({ step: 'payment' });
  };

  return (
    <div className='bg-white'>
      <div className='flex flex-row items-center justify-between mb-6'>
        <h2 className='flex flex-row text-xl font-semibold gap-x-2 items-center'>
          Delivery
          {!isOpen && <CheckCircleIcon className='w-5 h-5' />}
        </h2>
        {!isOpen && cart?.shipping_address && cart?.billing_address && cart?.email && (
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
        <>
          <SelectMethods shippingOptions={shippingOptions} cart={cart} onChange={onChange} />
          <div className='flex pb-4 pt-2 gap-x-4 mt-4'>
            <ButtonLoading
              color='secondary'
              variant='contained'
              isLoading={isLoading}
              onClick={onComplete}
              disabled={!cart.shipping_methods[0]?.shipping_option_id}>
              Continue to payment
            </ButtonLoading>
          </div>
        </>
      ) : (
        <DeliveryInfo cart={cart} />
      )}
      <Divider className='mt-8' />
    </div>
  );
};

export { Shipping };
