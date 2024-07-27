import { CartWithCheckoutStep } from '@/redux/types';

type PaymentProps = {
  cart: CartWithCheckoutStep;
};

const Payment = ({ cart }: PaymentProps) => {
  return <div>Payment</div>;
};

export default Payment;
