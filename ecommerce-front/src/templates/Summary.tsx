import { Divider } from '@/components';
import { CartWithCheckoutStep, IOrder } from '@/redux/types';
import { formatAmount } from '@/utils';

type SummaryProps = {
  cart: CartWithCheckoutStep | IOrder;
  title?: string;
};

const Summary = ({ cart, title }: SummaryProps) => {
  const { subtotal, tax_total, shipping_total, total } = cart;

  const getAmount = (amount: number | null | undefined) => {
    return formatAmount({
      amount: amount ?? 0,
      region: cart.region,
      includeTaxes: false,
    });
  };
  return (
    <div className='flex flex-col gap-y-4'>
      {!!title && (
        <>
          <h2 className='text-[2rem] leading-[2.75rem]'>{title}</h2>
          <Divider />
        </>
      )}
      <div>
        <div className='flex flex-col gap-y-2 txt-medium'>
          <div className='flex items-center justify-between'>
            <span className='flex gap-x-1 items-center'>Subtotal</span>
            <span>{getAmount(subtotal)}</span>
          </div>
          <div className='flex items-center justify-between'>
            <span>Shipping</span>
            <span>{getAmount(shipping_total)}</span>
          </div>
          <div className='flex justify-between'>
            <span className='flex gap-x-1 items-center '>Taxes</span>
            <span>{getAmount(tax_total)}</span>
          </div>
        </div>
        <div className='h-px w-full border-b border-gray-200 my-4' />
        <div className='flex items-center justify-between mb-2 txt-medium '>
          <span>Total</span>
          <span className='txt-xlarge-plus' data-testid='cart-total' data-value={total ?? 0}>
            {getAmount(total)}
          </span>
        </div>
        <div className='h-px w-full border-b border-gray-200 mt-4' />
      </div>
    </div>
  );
};

export { Summary };
