import { CartWithCheckoutStep, ICustomer, IShippingOption } from '@/redux/types';
import { CheckoutForm } from './CheckoutForm';
import { CheckoutSummary } from './CheckoutSummary';

type CheckoutWithDataProps = {
  customer?: ICustomer | null;
  shippingOptions: IShippingOption[];
  cart?: CartWithCheckoutStep | null;
};

const CheckoutWithData = ({ customer, shippingOptions, cart }: CheckoutWithDataProps) => {
  if (shippingOptions.length === 0 || !cart) {
    return null;
  }

  return (
    <>
      <CheckoutForm cart={cart} shippingOptions={shippingOptions} customer={customer} />
      <CheckoutSummary cart={cart} />
    </>
  );
};

export { CheckoutWithData };
