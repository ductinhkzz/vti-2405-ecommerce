import { IOrder } from '@/redux/types';

type OrderDetailsProps = {
  order: IOrder;
  showStatus?: boolean;
};

const OrderDetails = ({ order, showStatus }: OrderDetailsProps) => {
  const formatStatus = (str: string) => {
    const formatted = str.split('_').join(' ');

    return formatted.slice(0, 1).toUpperCase() + formatted.slice(1);
  };

  return (
    <div>
      <div>
        We have sent the order confirmation details to{' '}
        <span className='text-ui-fg-medium-plus font-semibold'>{order.email}</span>.
      </div>
      <p className='mt-2'>
        Order date: <span data-testid='order-date'>{new Date(order.created_at).toDateString()}</span>
      </p>
      <p className='mt-2 text-blue-500'>
        Order number: <span data-testid='order-id'>{order.display_id}</span>
      </p>
      <div className='flex items-center text-compact-small gap-x-4 mt-4'>
        {showStatus && (
          <>
            <p>
              Order status: <span className='text-ui-fg-subtle'>{formatStatus(order.fulfillment_status)}</span>
            </p>
            <p>
              Payment status: <span className='text-ui-fg-subtle'>{formatStatus(order.payment_status)}</span>
            </p>
          </>
        )}
      </div>
    </div>
  );
};

export { OrderDetails };
