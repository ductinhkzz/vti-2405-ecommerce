import { Disclosure, DisclosureButton, DisclosurePanel } from '@headlessui/react';
import { ChevronDownIcon } from '@heroicons/react/20/solid';

type AccordionProps = {
  title: React.ReactNode;
  children: React.ReactNode;
  defaultOpen?: boolean;
};

const Accordion = ({ title, children, defaultOpen = true }: AccordionProps) => {
  return (
    <Disclosure as='div' className='p-6' defaultOpen={defaultOpen}>
      <DisclosureButton className='group flex w-full items-center justify-between'>
        <span className='text-sm/6 font-medium text-gray-900 group-data-[hover]:text-gray-900/80'>{title}</span>
        <ChevronDownIcon className='size-5 fill-gray-900/60 group-data-[hover]:fill-gray-900/50 group-data-[open]:rotate-180' />
      </DisclosureButton>
      <DisclosurePanel className='mt-2 text-sm/5 text-gray-900/50'>{children}</DisclosurePanel>
    </Disclosure>
  );
};

export { Accordion };
