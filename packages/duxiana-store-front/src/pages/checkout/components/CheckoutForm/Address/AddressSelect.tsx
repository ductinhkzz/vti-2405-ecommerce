import clsx from 'clsx';
import { Listbox, ListboxButton, ListboxOption, ListboxOptions } from '@headlessui/react';
import { CheckIcon, ChevronDownIcon } from '@heroicons/react/24/outline';

import { IAddress, ICustomer } from '@/redux/types';

type AddressSelectProps = {
  customer: ICustomer;
  selectedAddress?: IAddress;
  onSelectCart: (val?: string) => void;
};

const AddressSelect = ({ customer, selectedAddress, onSelectCart }: AddressSelectProps) => {
  const addresses = customer.shipping_addresses ?? [];

  return (
    <div className='mb-6 flex flex-col gap-y-4 p-5 border rounded-lg'>
      <p className='text-small-regular'>
        {`Hi ${customer.first_name}, do you want to use one of your saved addresses?`}
      </p>
      <Listbox value={selectedAddress?.id ?? ''} onChange={onSelectCart}>
        <ListboxButton
          className={clsx(
            'relative block py-1.5 pr-8 pl-3 text-left text-sm/6 text-gray-900 border border-gray-900 w-full',
            'focus:outline-none data-[focus]:outline-2 data-[focus]:-outline-offset-2 data-[focus]:outline-white/25',
          )}>
          <span className='block truncate'>{selectedAddress ? selectedAddress.address_1 : 'Choose an address'}</span>
          <ChevronDownIcon
            className='group pointer-events-none absolute top-2.5 right-2.5 size-4 fill-white/60'
            aria-hidden='true'
          />
        </ListboxButton>
        <ListboxOptions
          anchor='bottom'
          className={clsx(
            'w-[var(--button-width)] border border-white/5p-1 [--anchor-gap:var(--spacing-1)] focus:outline-none bg-white',
            'transition duration-100 ease-in data-[leave]:data-[closed]:opacity-0',
          )}>
          {addresses.map((address) => (
            <ListboxOption
              key={address.id}
              value={address.id}
              className='group flex cursor-default items-center gap-2 py-1.5 px-3 select-none data-[focus]:bg-gray-100'>
              <CheckIcon className='invisible size-4 fill-white group-data-[selected]:visible' />
              <div className='flex flex-col'>
                <span className='text-left font-semibold'>
                  {address.first_name} {address.last_name}
                </span>
                {address.company && <span className='text-sm'>{address.company}</span>}
                <div className='flex flex-col text-left mt-2'>
                  <span>
                    {address.address_1}
                    {address.address_2 && <span>, {address.address_2}</span>}
                  </span>
                  <span>
                    {address.postal_code}, {address.city}
                  </span>
                  <span>
                    {address.province && `${address.province}, `}
                    {address.country_code?.toUpperCase()}
                  </span>
                </div>
              </div>
            </ListboxOption>
          ))}
        </ListboxOptions>
      </Listbox>
    </div>
  );
};

export default AddressSelect;
