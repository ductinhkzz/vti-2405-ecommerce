import { useParams } from 'react-router-dom';

import { useGetOrderQuery } from '@/redux/api';
import { Help, OrderDetails, ShippingDetails } from '../components';
import { ItemsTemplate, PaymentInfo, Summary } from '@/templates';
import { Divider } from '@/components';

const OrderCompleted = () => {
  const { id = '' } = useParams<'id'>();
  const { data: order } = useGetOrderQuery(
    {
      order_id: id,
    },
    { skip: !id, refetchOnMountOrArgChange: true },
  );

  if (!order) {
    return <></>;
  }

  return (
    <div className='flex justify-center'>
      <div className='content-container flex flex-col justify-center items-center gap-y-10 max-w-4xl h-full w-full'>
        <div className='flex flex-col gap-4 max-w-4xl h-full bg-white w-full py-10'>
          <h1 className='flex flex-col gap-y-3 font-semibold text-3xl mb-4 tracking-tight'>
            <span>Thank you!</span>
            <span>Your order was placed successfully.</span>
          </h1>
          <OrderDetails order={order} />
          <h2 className='flex flex-row text-2xl font-semibold gap-x-2 items-center'>Summary</h2>
          <Divider />
          <ItemsTemplate items={order.items} region={order.region} type='preview' />
          <Summary cart={order} />
          <ShippingDetails order={order} />
          <h2 className='flex flex-row text-2xl font-semibold gap-x-2 items-center mt-4'>Payment</h2>
          <PaymentInfo cart={order} />
          <Divider className='mt-4' />
          <Help />
        </div>
      </div>
    </div>
  );
};

export default OrderCompleted;
