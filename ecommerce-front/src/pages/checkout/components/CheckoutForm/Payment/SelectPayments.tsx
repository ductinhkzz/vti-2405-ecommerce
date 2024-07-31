import { Radio, RadioGroup } from '@headlessui/react';

import { CartWithCheckoutStep } from '@/redux/types';
import { paymentInfoMap } from './Payment';

type SelectPaymentsProps = {
  cart: CartWithCheckoutStep;
  onChange: (val?: string) => void;
};

const SelectPayments = ({ cart, onChange }: SelectPaymentsProps) => {
  return (
    <RadioGroup
      className='relative flex flex-col gap-4'
      value={cart.payment_session?.id ?? ''}
      onChange={onChange}>
      {cart.payment_sessions.map((method) => (
        <Radio
          key={method.id}
          value={method.id}
          className='group flex items-center justify-center border data-[checked]:bg-gray-100'>
          <div className='flex w-full items-center justify-between p-2'>
            <div className='text-sm/6 flex gap-x-2'>
              <p className='font-semibold'>{paymentInfoMap[method.provider_id]?.title || method.provider_id}</p>
              <div className='text-yellow-600'>
                <span className='font-semibold '>Attention:</span> For testing purposes only.
              </div>
            </div>
            {paymentInfoMap[method.provider_id]?.icon}
          </div>
        </Radio>
      ))}
    </RadioGroup>
  );
};

export default SelectPayments;
