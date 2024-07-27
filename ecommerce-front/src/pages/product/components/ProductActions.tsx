import { useEffect, useMemo, useRef, useState } from 'react';
import { isEqual } from 'lodash-es';

import { IProduct, IRegion } from '@/redux/types';
import { ButtonLoading } from '@/components';
import OptionSelect from './OptionSelect';
import ProductPrice from './ProductPrice';
import { useCookies } from 'react-cookie';
import { useAddLineItemsToCardMutation, useCreateCartMutation } from '@/redux/api';
import { useRedux } from '@/hooks';
import { setCart } from '@/redux/reducers';

type ProductActionsProps = {
  product: IProduct;
  region: IRegion;
  disabled?: boolean;
};

export type PriceType = {
  calculated_price: string;
  original_price?: string;
  price_type?: 'sale' | 'default';
  percentage_diff?: string;
};

const ProductActions = ({ product, region, disabled }: ProductActionsProps) => {
  const { appSelector, dispatch } = useRedux();
  const { cart } = appSelector((state) => state.global);
  const [options, setOptions] = useState<Record<string, string>>({});
  const [isAdding, setIsAdding] = useState(false);
  const [, setCookie] = useCookies(['_duxiana_cart_id']);

  const [createCart] = useCreateCartMutation();
  const [addLineItems] = useAddLineItemsToCardMutation();

  const variants = product.variants ?? [];

  // initialize the option state
  useEffect(() => {
    const optionObj: Record<string, string> = {};

    for (const option of product.options || []) {
      Object.assign(optionObj, { [option.id]: undefined });
    }

    setOptions(optionObj);
  }, [product]);

  // memoized record of the product's variants
  const variantRecord = useMemo(() => {
    const map: Record<string, Record<string, string>> = {};

    for (const variant of variants) {
      if (!variant.options || !variant.id) continue;

      const temp: Record<string, string> = {};

      for (const option of variant.options) {
        temp[option.option_id] = option.value;
      }

      map[variant.id] = temp;
    }

    return map;
  }, [variants]);

  // memoized function to check if the current options are a valid variant
  const variant = useMemo(() => {
    let variantId: string | undefined = undefined;

    for (const key of Object.keys(variantRecord)) {
      if (isEqual(variantRecord[key], options)) {
        variantId = key;
      }
    }

    return variants.find((v) => v.id === variantId);
  }, [options, variantRecord, variants]);

  // if product only has one variant, then select it
  useEffect(() => {
    if (variants.length === 1 && variants[0].id) {
      setOptions(variantRecord[variants[0].id]);
    }
  }, [variants, variantRecord]);

  // update the options when a variant is selected
  const updateOptions = (update: Record<string, string>) => {
    setOptions({ ...options, ...update });
  };

  // check if the selected variant is in stock
  const inStock = useMemo(() => {
    // If we don't manage inventory, we can always add to cart
    if (variant && !variant.manage_inventory) {
      return true;
    }

    // If we allow back orders on the variant, we can add to cart
    if (variant?.allow_backorder) {
      return true;
    }

    // If there is inventory available, we can add to cart
    if (variant?.inventory_quantity && variant.inventory_quantity > 0) {
      return true;
    }

    // Otherwise, we can't add to cart
    return false;
  }, [variant]);

  const btnText = useMemo(() => {
    if (!variant) {
      return 'Select variant';
    }
    if (!inStock) {
      return 'Out of stock';
    }

    return 'Add to cart';
  }, [variant, inStock]);

  const actionsRef = useRef<HTMLDivElement>(null);

  const addToCart = (variant_id: string) => {
    setIsAdding(true);
    if (!cart) {
      createCart({ region_id: region.id })
        .unwrap()
        .then((cart) => {
          dispatch(setCart(cart));
          setCookie('_duxiana_cart_id', cart.id, {
            path: '/',
            maxAge: 60 * 60 * 24 * 7,
            sameSite: 'strict',
            secure: process.env.NODE_ENV === 'production',
          });
          addLineItems({ cart_id: cart.id, variant_id, quantity: 1 });
          setIsAdding(false);
        })
        .catch((error) => {
          console.error(error);
          setIsAdding(false);
        });

      return;
    }

    addLineItems({ cart_id: cart.id, variant_id, quantity: 1 });
    setIsAdding(false);
  };

  // add the selected variant to the cart
  const handleAddToCart = () => {
    if (!variant?.id) return null;
    addToCart(variant.id);
  };

  return (
    <div className='w-full flex justify-center my-16'>
      <div
        className='w-full max-w-4xl grid grid-cols-1 grid-rows-2 xl:grid-rows-1 xl:grid-cols-3 gap-8 px-16 xl:px-0'
        ref={actionsRef}>
        {variants.length > 1 && (
          <div className='row-start-1 xl:col-span-2 flex flex-col gap-y-4'>
            {(product.options || []).map((option) => {
              return (
                <div key={option.id}>
                  <OptionSelect
                    option={option}
                    current={options[option.id]}
                    updateOption={updateOptions}
                    title={option.title}
                    disabled={disabled || isAdding}
                  />
                </div>
              );
            })}
          </div>
        )}

        <div className='row-start-2 xl:col-span-1 xl:row-start-1 flex justify-center items-start'>
          <div className='flex justify-center items-center gap-x-4 py-8'>
            <ProductPrice product={product} variant={variant} region={region} />
            <ButtonLoading
              onClick={handleAddToCart}
              disabled={!inStock || !variant || !!disabled || isAdding}
              className='w-auto h-10'
              isLoading={isAdding}
              color='secondary'
              data-testid='add-product-button'>
              {btnText}
            </ButtonLoading>
          </div>
        </div>
      </div>
    </div>
  );
};

export { ProductActions };
