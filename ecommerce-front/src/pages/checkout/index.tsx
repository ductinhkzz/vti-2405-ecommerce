import { useEffect } from 'react';

import { useCustomer, useRedux } from '@/hooks';
import { CheckoutWithData } from './components';
import { GlobalStateType } from '@/redux/reducers';
import { useCreateCartPaymentSessionMutation, useGetShippingOptionsQuery } from '@/redux/api';
import { LoadingOverlay } from '@/components';
import { getCheckoutStep } from '@/utils';
import { CartWithCheckoutStep } from '@/redux/types';

const Checkout = () => {
  const { appSelector } = useRedux();
  const { cart } = appSelector<GlobalStateType>((state) => state.global);
  const customer = useCustomer();
  const [createPaymentSession, { isLoading: isCreatingPaymentSS }] = useCreateCartPaymentSessionMutation();
  const { data: shippingOptions = [], isLoading: isGetShippingOptionLoading } = useGetShippingOptionsQuery(
    { cart_id: cart?.id ?? '' },
    { skip: !cart?.id },
  );

  const availableShippingMethods = shippingOptions.filter((option) => !option.is_return);

  const loading = isGetShippingOptionLoading || isCreatingPaymentSS;

  const _cart = cart ? ({ ...cart, checkout_step: cart && getCheckoutStep(cart) } as CartWithCheckoutStep) : null;

  useEffect(() => {
    if (cart?.id) {
      createPaymentSession({ cart_id: cart.id });
    }
  }, [cart?.id]);

  return (
    <div className='flex justify-center'>
      <div className='w-full grid grid-cols-1 sm:grid-cols-[1fr_416px] max-w-screen-2xl gap-x-20 py-12'>
        {loading ? (
          <LoadingOverlay />
        ) : (
          <CheckoutWithData cart={_cart} customer={customer} shippingOptions={availableShippingMethods} />
        )}
      </div>
    </div>
  );
};

export default Checkout;
