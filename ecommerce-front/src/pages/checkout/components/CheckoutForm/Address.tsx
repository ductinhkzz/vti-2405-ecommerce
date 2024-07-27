import { CartWithCheckoutStep, ICustomer } from '@/redux/types';

type AddressProps = {
  cart: CartWithCheckoutStep;
  customer: ICustomer;
};

const Address = ({ cart, customer }: AddressProps) => {
  return <div>Address</div>;
};

export default Address;
