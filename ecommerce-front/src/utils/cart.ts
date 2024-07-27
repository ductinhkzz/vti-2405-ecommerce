import { ICart } from '@/redux/types';

export function getCheckoutStep(cart: ICart) {
  if (!cart?.shipping_address?.address_1 || !cart.email) {
    return 'address';
  } else if (cart?.shipping_methods.length === 0) {
    return 'delivery';
  } else {
    return 'payment';
  }
}
