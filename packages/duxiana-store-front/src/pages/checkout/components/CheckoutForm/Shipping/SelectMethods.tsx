import { Radio, RadioGroup } from '@headlessui/react';
import { CheckCircleIcon } from '@heroicons/react/24/outline';

import { CartWithCheckoutStep, IShippingOption } from '@/redux/types';
import { formatAmount } from '@/utils';

type SelectMethodsProps = {
  shippingOptions: IShippingOption[];
  cart: CartWithCheckoutStep;
  onChange: (val?: string) => void;
};

const SelectMethods = ({ shippingOptions, cart, onChange }: SelectMethodsProps) => {
  return (
    <RadioGroup
      className='relative flex flex-col gap-4'
      value={cart.shipping_methods[0]?.shipping_option_id}
      onChange={onChange}>
      {shippingOptions.map((method) => (
        <Radio
          key={method.id}
          value={method.id}
          className='group flex items-center justify-center border data-[checked]:bg-gray-100'>
          <div className='flex w-full items-center justify-between p-2'>
            <div className='text-sm/6 flex gap-x-2'>
              <p className='font-semibold'>{method.name}</p>
              <div className='flex gap-2 text-gray-700'>
                <div>
                  {formatAmount({
                    amount: method.amount,
                    region: cart?.region,
                    includeTaxes: false,
                  })}
                </div>
              </div>
            </div>
            <CheckCircleIcon className='size-6 opacity-0 transition group-data-[checked]:opacity-100' />
          </div>
        </Radio>
      ))}
    </RadioGroup>
  );
};

export default SelectMethods;
