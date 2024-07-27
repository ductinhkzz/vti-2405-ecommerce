import { CartWithCheckoutStep, IShippingOption } from '@/redux/types';

type ShippingProps = {
  shippingOptions: IShippingOption[];
  cart: CartWithCheckoutStep;
};

const Shipping = ({ shippingOptions, cart }: ShippingProps) => {
  return <div>Shipping</div>;
};

export default Shipping;
