import { CartWithCheckoutStep } from '@/redux/types';

type AddressInfoProps = {
  cart: CartWithCheckoutStep;
  sameAsSBilling?: boolean;
};

const AddressInfo = ({ cart, sameAsSBilling }: AddressInfoProps) => {
  return (
    <div>
      <div className='text-small-regular'>
        {cart && cart.shipping_address && (
          <div className='flex items-start gap-x-8'>
            <div className='flex items-start gap-x-1 w-full'>
              <div className='flex flex-col w-1/3'>
                <p className='mb-1 text-md font-normal'>Shipping Address</p>
                <p className='text-sm'>
                  {cart.shipping_address.first_name} {cart.shipping_address.last_name}
                </p>
                <p className='text-sm'>
                  {cart.shipping_address.address_1} {cart.shipping_address.address_2}
                </p>
                <p className='text-sm'>
                  {cart.shipping_address.postal_code}, {cart.shipping_address.city}
                </p>
                <p className='text-sm'>{cart.shipping_address.country_code?.toUpperCase()}</p>
              </div>

              <div className='flex flex-col w-1/3'>
                <p className='mb-1 text-md font-normal'>Contact</p>
                <p className='text-sm'>{cart.shipping_address.phone}</p>
                <p className='text-sm'>{cart.email}</p>
              </div>

              <div className='flex flex-col w-1/3'>
                <p className='mb-1 text-md font-normal'>Billing Address</p>

                {sameAsSBilling ? (
                  <p className='text-sm'>Billing- and delivery address are the same.</p>
                ) : (
                  <>
                    <p className='text-sm'>
                      {cart.billing_address.first_name} {cart.billing_address.last_name}
                    </p>
                    <p className='text-sm'>
                      {cart.billing_address.address_1} {cart.billing_address.address_2}
                    </p>
                    <p className='text-sm'>
                      {cart.billing_address.postal_code}, {cart.billing_address.city}
                    </p>
                    <p className='text-sm'>{cart.billing_address.country_code?.toUpperCase()}</p>
                  </>
                )}
              </div>
            </div>
          </div>
        )}
      </div>
    </div>
  );
};

export default AddressInfo;
