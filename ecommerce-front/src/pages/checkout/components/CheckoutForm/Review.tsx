import { useEffect } from 'react';
import { useNavigate, useSearchParams } from 'react-router-dom';
import { useCookies } from 'react-cookie';
import { CheckCircleIcon } from '@heroicons/react/24/outline';

import { ButtonLoading } from '@/components';
import { CartWithCheckoutStep } from '@/redux/types';
import { useCompleteCartMutation } from '@/redux/api';

type ReviewProps = {
  cart: CartWithCheckoutStep;
};
const Review = ({ cart }: ReviewProps) => {
  const navigate = useNavigate();
  const [, setCookie] = useCookies(['_duxiana_cart_id']);
  const [completeCart, { isLoading, data, isSuccess }] = useCompleteCartMutation();
  const [searchParams] = useSearchParams();
  const isOpen = searchParams.get('step') === 'review';
  const previousStepsCompleted = cart.shipping_address && cart.shipping_methods.length > 0 && cart.payment_session;

  const onOrder = () => {
    completeCart({ cart_id: cart.id });
  };

  useEffect(() => {
    if (isSuccess && data) {
      setCookie('_duxiana_cart_id', '', { maxAge: -1 });
      navigate(`/order/completed/${data.id}`);
    }
  }, [isSuccess, data]);

  return (
    <div className='bg-white'>
      <div className='flex flex-row items-center justify-between mb-6'>
        <h2 className='flex flex-row text-xl font-semibold gap-x-2 items-center'>
          Review
          {!isOpen && <CheckCircleIcon className='w-5 h-5' />}
        </h2>
      </div>
      {isOpen && previousStepsCompleted && (
        <>
          <div className='flex items-start gap-x-1 w-full mb-6'>
            <div className='w-full'>
              <p className='mb-1'>
                By clicking the Place Order button, you confirm that you have read, understand and accept our Terms of
                Use, Terms of Sale and Returns Policy and acknowledge that you have read Duxiana Store&apos;s Privacy
                Policy.
              </p>
            </div>
          </div>
          <div className='flex pb-4 pt-2 gap-x-4 mt-4'>
            <ButtonLoading color='secondary' variant='contained' onClick={onOrder} isLoading={isLoading}>
              Place order
            </ButtonLoading>
          </div>
        </>
      )}
    </div>
  );
};

export default Review;
