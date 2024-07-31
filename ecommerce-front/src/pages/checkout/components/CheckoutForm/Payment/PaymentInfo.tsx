import { PAYMENT_INFO_MAP } from '@/constants';
import { CartWithCheckoutStep } from '@/redux/types';

type PaymentInfoProps = {
  cart: CartWithCheckoutStep;
};

const PaymentInfo = ({ cart }: PaymentInfoProps) => {
  const paymentProviderId = cart.payment_session?.provider_id;
  const info = paymentProviderId ? PAYMENT_INFO_MAP[paymentProviderId] : null;
  const Icon = info?.icon;
  return (
    <div className='flex items-start gap-x-1 w-full'>
      <div className='flex flex-col w-1/3'>
        <p className='mb-1'>Payment method</p>
        {paymentProviderId && (
          <p className='text-gray-700' data-testid='payment-method-summary'>
            {info?.title ?? paymentProviderId}
          </p>
        )}
      </div>
      <div className='flex flex-col w-1/3'>
        <p className='txt-medium-plus text-ui-fg-base mb-1'>Payment details</p>
        <div className='flex gap-2 txt-medium text-ui-fg-subtle items-center' data-testid='payment-details-summary'>
          {paymentProviderId && (
            <div className='flex items-center h-7 w-fit p-2 bg-ui-button-neutral-hover'>
              {Icon && <Icon className='size-6' />}
            </div>
          )}
          <p className='text-gray-700'>Another step will appear</p>
        </div>
      </div>
    </div>
  );
};

export default PaymentInfo;
