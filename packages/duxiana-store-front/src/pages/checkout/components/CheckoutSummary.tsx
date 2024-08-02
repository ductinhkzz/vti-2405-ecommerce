import { CartWithCheckoutStep } from '@/redux/types';
import { ItemsTemplate, Summary } from '@/templates';

type CheckoutSummaryProps = {
  cart: CartWithCheckoutStep;
};

const CheckoutSummary = ({ cart }: CheckoutSummaryProps) => {
  return (
    <div className='sticky top-0 flex flex-col justify-start small:flex-col gap-y-8 py-8 small:py-0 col-start-2'>
      <Summary cart={cart} title='In your cart' />
      <ItemsTemplate items={cart.items} region={cart.region} type='preview' />
    </div>
  );
};

export { CheckoutSummary };
