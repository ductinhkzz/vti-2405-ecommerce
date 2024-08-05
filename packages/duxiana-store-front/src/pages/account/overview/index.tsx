import { useCustomer, usePageTitle } from '@/hooks';
import { getProfileCompletion } from '../utils';

const Overview = () => {
  const customer = useCustomer();
  const completedPercent = getProfileCompletion(customer);

  usePageTitle('Account | Duxiana')

  return (
    <div className='flex-1'>
      <div className='flex justify-between items-center mb-4'>
        <span className='text-2xl font-semibold'>Hello {customer?.full_name}</span>
        <span className='text-sm'>
          Signed in as: <span className='font-semibold'>{customer?.email}</span>
        </span>
      </div>
      <div className='flex flex-col py-8 border-t border-gray-200'>
        <div className='flex flex-col gap-y-4 h-full col-span-1 row-span-2 flex-1'>
          <div className='flex items-start gap-x-16 mb-6'>
            <div className='flex flex-col gap-y-4'>
              <h3 className='font-semibold text-lg'>Profile</h3>
              <div className='flex items-end gap-x-2'>
                <span className='text-2xl font-semibold leading-none'>{completedPercent}%</span>
                <span className='uppercase text-sm font-normal'>Completed</span>
              </div>
            </div>
            <div className='flex flex-col gap-y-4'>
              <h3 className='font-semibold text-lg'>Addresses</h3>
              <div className='flex items-end gap-x-2'>
                <span className='text-2xl font-semibold leading-none'>{customer?.shipping_addresses?.length ?? 0}</span>
                <span className='uppercase text-sm font-normal'>Saved</span>
              </div>
            </div>
          </div>
          <div className='flex flex-col gap-y-4'>
            <div className='flex items-center gap-x-2'>
              <h3 className='font-semibold text-lg'>Recent orders</h3>
            </div>
            <ul className='flex flex-col gap-y-4'>
              <span>No recent orders</span>
            </ul>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Overview;
