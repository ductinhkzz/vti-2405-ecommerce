import { ArrowUpRightIcon } from '@heroicons/react/24/outline';
import { Outlet } from 'react-router-dom';

import Sidebar from './Sidebar';

const AccountLayout = () => {
  return (
    <div className='flex-1 sm:py-12'>
      <div className='flex-1 content-container h-full max-w-5xl mx-auto bg-white flex flex-col'>
        <div className='grid grid-cols-1  sm:grid-cols-[240px_1fr] py-12'>
          <Sidebar />
          <div>
            <Outlet />
          </div>
        </div>
        <div className='flex flex-col sm:flex-row items-end justify-between sm:border-t border-gray-200 py-12 gap-8'>
          <div>
            <h3 className='font-semibold text-2xl mb-4'>Got questions?</h3>
            <span className='text-medium'>
              You can find frequently asked questions and answers on our customer service page.
            </span>
          </div>
          <div>
            <a className='flex gap-x-1 items-center group' href='/us/customer-service'>
              <p className='font-normal font-sans txt-medium'>Customer Service</p>
              <ArrowUpRightIcon className='h-4 w-4' />
            </a>
          </div>
        </div>
      </div>
    </div>
  );
};

export { AccountLayout };
