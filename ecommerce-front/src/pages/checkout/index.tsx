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

  console.log('============================');
  console.log(_cart);
  console.log('============================');
  console.log('============================');
  console.log(customer);
  console.log('============================');
  console.log('============================');
  console.log(availableShippingMethods);
  console.log('============================');
  return (
    <div className='grid grid-cols-1 small:grid-cols-[1fr_416px] content-container gap-x-40 py-12'>
      {loading ? (
        <LoadingOverlay />
      ) : (
        <CheckoutWithData cart={_cart} customer={customer} shippingOptions={availableShippingMethods} />
      )}
    </div>
  );
};

export default Checkout;
