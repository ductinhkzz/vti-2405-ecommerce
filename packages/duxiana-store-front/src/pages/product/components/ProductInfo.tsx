import { Disclosure, DisclosureButton, DisclosurePanel } from '@headlessui/react';
import { ChevronDownIcon } from '@heroicons/react/20/solid';

import { IProduct } from '@/redux/types';

const ProductInfo = ({ weight, width, height, length, description, metadata }: IProduct) => {
  return (
    <div className='w-full flex justify-center my-8'>
      <div className='container sm:w-xl grid grid-cols-2 grid-rows-1 gap-8'>
        <div className='col-start-1'>{description}</div>
        <div className='col-start-2 flex flex-col items-start gap-2'>
          <Disclosure>
            <DisclosureButton className='group flex items-center gap-2 justify-between w-full bg-gray-100 p-2'>
              FEATURES <ChevronDownIcon className='w-5 group-data-[open]:rotate-180' />
            </DisclosureButton>
            <DisclosurePanel className='text-gray-500 text-sm mb-4'>
              <a target='__blank' href={metadata?.feautures} className='mt-2'>
                Download complete bed pricing and specifications guide
              </a>
            </DisclosurePanel>
          </Disclosure>
          <Disclosure>
            <DisclosureButton className='group flex items-center gap-2 justify-between w-full bg-gray-100 p-2'>
              DIMENSIONS <ChevronDownIcon className='w-5 group-data-[open]:rotate-180' />
            </DisclosureButton>
            <DisclosurePanel className='text-gray-500 text-sm mb-4'>
              <p className='mb-1 mt-2'>Width: {width}</p>
              <p className='mb-1'>Weight: {weight}</p>
              <p className='mb-1'>Height: {height}</p>
              <p className='mb-1'>Length: {length}</p>
            </DisclosurePanel>
          </Disclosure>
          <Disclosure>
            <DisclosureButton className='group flex items-center gap-2 justify-between w-full bg-gray-100 p-2'>
              SHIPPINGS <ChevronDownIcon className='w-5 group-data-[open]:rotate-180' />
            </DisclosureButton>
            <DisclosurePanel className='text-gray-500 text-sm mb-4'>
              <p className='my-2'>
                A DUXIANA representative will contact you within one business day of placing your DUX 1001 order to
                arrange delivery. In most cases, we will deliver your bed within 10-15 business days. Some areas may
                have slightly longer delivery times
              </p>
              <p>
                If you have any questions regarding your delivery, please email customerservice@duxiana.com, or call
                1-888-752-7204, Monday - Friday, 9am-5 pm CT.
              </p>
            </DisclosurePanel>
          </Disclosure>
        </div>
      </div>
    </div>
  );
};

export { ProductInfo };
