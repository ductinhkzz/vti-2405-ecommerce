import { PageHeader } from '../components';
import { AddressCard, CreateAddressCard } from './components';

const Addresses = () => {
  return (
    <div className='flex-1'>
      <PageHeader
        title='Shipping Addresses'
        description='View and update your shipping addresses, you can add as many as you like. Saving your addresses will make them available during checkout.'
      />
      <div className='w-full'>
        <div className='grid grid-cols-2 gap-4'>
          <CreateAddressCard />
          <AddressCard name='Tinh Le' company='LG' address_1='Me Linh' address_2='CT1' country='Da Nang' />
        </div>
      </div>
    </div>
  );
};

export default Addresses;
