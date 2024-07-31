import { useSearchParams } from 'react-router-dom';
import { CheckCircleIcon } from '@heroicons/react/24/outline';

import { Button, ButtonLoading, Divider } from '@/components';
import { CartWithCheckoutStep } from '@/redux/types';
import SelectPayments from './SelectPayments';
import PaymentInfo from './PaymentInfo';
import { useSelectPaymentSessionMutation } from '@/redux/api';

type PaymentProps = {
  cart: CartWithCheckoutStep;
};

const Payment = ({ cart }: PaymentProps) => {
  const [searchParams, setSearchParams] = useSearchParams();
  const isOpen = searchParams.get('step') === 'payment';
  const [selectPayment, { isLoading }] = useSelectPaymentSessionMutation();
  const handleEdit = () => {
    setSearchParams({ step: 'payment' });
  };

  const onChange = (val?: string) => {
    if (val) {
      selectPayment({
        provider_id: val,
        cart_id: cart.id,
      });
    }
  };

  const onComplete = () => {
    setSearchParams({ step: 'review' });
  };

  return (
    <div className='bg-white'>
      <div className='flex flex-row items-center justify-between mb-6'>
        <h2 className='flex flex-row text-xl font-semibold gap-x-2 items-center'>
          Payment
          {!isOpen && <CheckCircleIcon className='w-5 h-5' />}
        </h2>
        {!isOpen && cart?.shipping_address && cart?.billing_address && cart?.email && (
          <Button
            color='secondary'
            variant='text'
            className='text-ui-fg-interactive hover:text-ui-fg-interactive-hover'
            onClick={handleEdit}>
            Edit
          </Button>
        )}
      </div>
      {isOpen ? (
        <>
          <SelectPayments cart={cart} onChange={onChange} />
          <div className='flex pb-4 pt-2 gap-x-4 mt-4'>
            <ButtonLoading
              color='secondary'
              variant='contained'
              onClick={onComplete}
              isLoading={isLoading}
              disabled={!cart?.payment_session}>
              Continue to review
            </ButtonLoading>
          </div>
        </>
      ) : (
        <PaymentInfo cart={cart} />
      )}
      <Divider className='mt-8' />
    </div>
  );
};

export { Payment };
