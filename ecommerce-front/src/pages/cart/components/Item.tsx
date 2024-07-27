import { ChangeEvent } from 'react';
import clsx from 'clsx';
import { useCookies } from 'react-cookie';
import { NavLink } from 'react-router-dom';
import { TrashIcon } from '@heroicons/react/24/outline';

import { ILineItem, IRegion } from '@/redux/types';
import { IconButton, Select } from '@/components';
import LineItemUnitPrice from './LineItemUnitPrice';
import LineItemPrice from './LineItemPrice';
import { useUpdateLineItemMutation } from '@/redux/api';

type ItemProps = {
  item: ILineItem;
  region: IRegion;
  type?: 'full' | 'preview';
};

const Item = ({ item, region, type = 'full' }: ItemProps) => {
  const [cookies] = useCookies(['_duxiana_cart_id']);
  const [updateLineItem, { isLoading }] = useUpdateLineItemMutation();
  const cardId = cookies['_duxiana_cart_id'];
  const product_id = item.variant.product.id;
  const quantityOptions = Array.from(
    {
      length: Math.min(item.variant.inventory_quantity > 0 ? item.variant.inventory_quantity : 10, 10),
    },
    (_, i) => i + 1,
  ).map((value) => ({ label: value.toString(), value: value.toString() }));

  const onChangeQuantity = (e: ChangeEvent<HTMLSelectElement>) => {
    e.preventDefault();
    const value = e.target.value;
    if (value) {
      const transformVal = parseInt(value);
      cardId && updateLineItem({ cart_id: cardId, line_id: item.id, quantity: transformVal });
    }
  };

  return (
    <tr className='w-full' data-testid='product-row'>
      <td className='p-2'>
        <NavLink to={`/product/${product_id}`} className='w-full flex justify-center'>
          <img
            src={item.thumbnail ?? undefined}
            alt={item.cart_id}
            className={clsx('object-cover rounded', {
              'w-16 h-16': type === 'preview',
              'sm:w-20 sm:h-20 w-12 h-12': type === 'full',
            })}
          />
        </NavLink>
      </td>

      <td className='text-left p-2'>
        <p className='txt-medium-plus text-ui-fg-base' data-testid='product-title'>
          {item.title}
        </p>
        <p className='inline-block txt-medium text-ui-fg-subtle w-full overflow-hidden text-ellipsis'>
          Variant: {item.variant.title}
        </p>
      </td>

      {type === 'full' && (
        <td className='p-2'>
          <div className='w-full flex gap-2 items-center justify-center'>
            <IconButton color='secondary' className='border-0' disabled={isLoading}>
              <TrashIcon className='w-5 h-5' />
            </IconButton>
            <Select
              value={item.quantity.toString()}
              options={quantityOptions}
              onChange={onChangeQuantity}
              aria-disabled={isLoading}
            />
          </div>
        </td>
      )}

      {type === 'full' && (
        <td className='hidden small:table-cell p-2'>
          <LineItemUnitPrice item={item} region={region} style='tight' />
        </td>
      )}

      <td className='p-2'>
        <span
          className={clsx('!pr-0', {
            'flex flex-col items-end h-full justify-center': type === 'preview',
          })}>
          {type === 'preview' && (
            <span className='flex gap-x-1 '>
              <p className='text-ui-fg-muted'>{item.quantity}x </p>
              <LineItemUnitPrice item={item} region={region} style='tight' />
            </span>
          )}
          <LineItemPrice item={item} region={region} style='tight' />
        </span>
      </td>
    </tr>
  );
};

export default Item;
