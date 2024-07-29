import { CartWithCheckoutStep, ICustomer, IShippingOption } from '@/redux/types';
import { Address } from './Address';
import Shipping from './Shipping';
import Payment from './Payment';
import Review from './Review';

type CheckoutFormProps = {
  customer: ICustomer;
  shippingOptions: IShippingOption[];
  cart: CartWithCheckoutStep;
};

const CheckoutForm = ({ customer, shippingOptions, cart }: CheckoutFormProps) => {
  return (
    <div className='col-start-1'>
      <div className='w-full grid grid-cols-1 gap-y-8'>
        <div>
          <Address cart={cart} customer={customer} />
        </div>

        <div>
          <Shipping cart={cart} shippingOptions={shippingOptions} />
        </div>

        <div>
          <Payment cart={cart} />
        </div>

        <div>
          <Review cart={cart} />
        </div>
      </div>
    </div>
  );
};

export { CheckoutForm };
