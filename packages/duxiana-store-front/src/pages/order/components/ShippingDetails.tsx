import { Divider } from '@/components';
import { IOrder } from '@/redux/types';
import { formatAmount } from '@/utils';

type ShippingDetailsProps = {
  order: IOrder;
};

const ShippingDetails = ({ order }: ShippingDetailsProps) => {
  return (
    <div>
      <h2 className='flex flex-row text-2xl font-semibold gap-x-2 items-center my-4'>Delivery</h2>
      <div className='flex items-start gap-x-8'>
        <div className='flex flex-col w-1/3' data-testid='shipping-address-summary'>
          <p className='txt-medium-plus text-ui-fg-base mb-1'>Shipping Address</p>
          <p className='txt-medium text-ui-fg-subtle'>
            {order.shipping_address.first_name} {order.shipping_address.last_name}
          </p>
          <p className='txt-medium text-ui-fg-subtle'>
            {order.shipping_address.address_1} {order.shipping_address.address_2}
          </p>
          <p className='txt-medium text-ui-fg-subtle'>
            {order.shipping_address.postal_code}, {order.shipping_address.city}
          </p>
          <p className='txt-medium text-ui-fg-subtle'>{order.shipping_address.country_code?.toUpperCase()}</p>
        </div>

        <div className='flex flex-col w-1/3 ' data-testid='shipping-contact-summary'>
          <p className='txt-medium-plus text-ui-fg-base mb-1'>Contact</p>
          <p className='txt-medium text-ui-fg-subtle'>{order.shipping_address.phone}</p>
          <p className='txt-medium text-ui-fg-subtle'>{order.email}</p>
        </div>

        <div className='flex flex-col w-1/3' data-testid='shipping-method-summary'>
          <p className='txt-medium-plus text-ui-fg-base mb-1'>Method</p>
          <p className='txt-medium text-ui-fg-subtle'>
            {order.shipping_methods[0].shipping_option?.name} (
            {formatAmount({
              amount: order.shipping_methods[0].price,
              region: order.region,
              includeTaxes: false,
            })
              .replace(/,/g, '')
              .replace(/\./g, ',')}
            )
          </p>
        </div>
      </div>
      <Divider className='mt-8' />
    </div>
  );
};

export { ShippingDetails };
