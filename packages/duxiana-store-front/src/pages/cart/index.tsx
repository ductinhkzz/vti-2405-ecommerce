import { useMemo } from 'react';
import { omit } from 'lodash-es';

import { getCheckoutStep } from '@/utils';
import { useCustomer, useRedux } from '@/hooks';
import { useGetProductsQuery } from '@/redux/api';
import { GlobalStateType } from '@/redux/reducers';
import { Button, Container, Divider, LoadingOverlay } from '@/components';
import { SignInPrompt } from './components';
import { CartWithCheckoutStep, ILineItem } from '@/redux/types';
import { ItemsTemplate, Summary } from '@/templates';

const Cart = () => {
  const { appSelector } = useRedux();
  const { cart } = appSelector<GlobalStateType>((state) => state.global);

  const lineItems = cart?.items ?? [];
  const regionId = cart?.region_id;

  const lineItemIds = lineItems.map((item) => item.id);

  const { data: productsRes, isLoading } = useGetProductsQuery(
    { id: lineItemIds, region_id: regionId },
    { refetchOnMountOrArgChange: true, skip: !cart },
  );

  const _cart = useMemo(() => {
    if (!cart) {
      return null;
    }

    const __cart = { ...cart } as CartWithCheckoutStep;

    const products = productsRes?.products ?? [];

    if (lineItems.length > 0 && products.length > 0) {
      const enrichedItems = lineItems.map((item) => {
        const product = products.find((p) => p.id === item.variant.product_id);
        const variant = product?.variants.find((v) => v.id === item.variant_id);

        // If product or variant is not found, return the original item
        if (!product || !variant) {
          return item;
        }

        // If product and variant are found, enrich the item
        return {
          ...item,
          variant: {
            ...variant,
            product: omit(product, 'variants'),
          },
        };
      }) as ILineItem[];
      __cart.items = enrichedItems;
    }
    __cart.checkout_step = cart && getCheckoutStep(cart);

    return __cart;
  }, [productsRes, cart]);

  const customer = useCustomer();

  return (
    <Container className='my-4 md:my-8'>
      {isLoading && <LoadingOverlay />}
      <div className='container sm:w-xl w-ful'>
        <div className='grid grid-cols-1 sm:grid-cols-[1fr_360px] gap-x-24'>
          <div className='flex flex-col bg-white py-4 gap-y-4'>
            {!customer && (
              <>
                <SignInPrompt />
                <Divider />
              </>
            )}
            <ItemsTemplate region={cart?.region} items={lineItems} type='full' />
          </div>
          <div className='Relative'>
            <div className='flex flex-col gap-y-8 sticky top-12'>
              {_cart && regionId && (
                <div className='bg-white py-6'>
                  <Summary cart={_cart} title='Summary' />
                  <a href={'/checkout?step=' + _cart.checkout_step} className='w-full'>
                    <Button color='secondary' className='w-full'>
                      Go to checkout
                    </Button>
                  </a>
                </div>
              )}
            </div>
          </div>
        </div>
      </div>
    </Container>
  );
};

export default Cart;
