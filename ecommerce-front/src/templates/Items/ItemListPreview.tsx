import clsx from 'clsx';

import Item from './Item';
import { ItemListProps } from './types';

const ItemListPreview = ({ items, region }: ItemListProps) => {
  const hasOverflow = items && items.length > 4;

  return (
    <div
      className={clsx({
        'pl-[1px] overflow-y-scroll overflow-x-hidden no-scrollbar max-h-[420px]': hasOverflow,
      })}>
      <table className='w-full'>
        <tbody data-testid='items-table'>
          {items &&
            region &&
            items.map((item) => {
              return <Item key={item.id} item={item} region={region} type='preview' />;
            })}
        </tbody>
      </table>
    </div>
  );
};

export default ItemListPreview;
