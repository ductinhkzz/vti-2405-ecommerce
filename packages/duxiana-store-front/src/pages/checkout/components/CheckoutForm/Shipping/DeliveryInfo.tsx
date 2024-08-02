import { CartWithCheckoutStep } from '@/redux/types';
import { formatAmount } from '@/utils';

type DeliveryInfoProps = {
  cart: CartWithCheckoutStep;
};

const DeliveryInfo = ({ cart }: DeliveryInfoProps) => {
  return (
    <div>
      <div className='text-small-regular'>
        {cart && cart.shipping_methods.length > 0 && (
          <div className='flex flex-col w-1/3'>
            <p className='mb-1'>Method</p>
            <p className='text-gray-700'>
              {cart.shipping_methods[0].shipping_option.name} (
              {formatAmount({
                amount: cart.shipping_methods[0].price,
                region: cart.region,
                includeTaxes: false,
              })
                .replace(/,/g, '')
                .replace(/\./g, ',')}
              )
            </p>
          </div>
        )}
      </div>
    </div>
  );
};

export default DeliveryInfo;
