import Item from './Item';
import { ItemListProps } from './types';

const ItemListFull = ({ items = [], region }: ItemListProps) => {
  const sortedItems = [...items].sort((a, b) => {
    return a.created_at > b.created_at ? -1 : 1;
  });

  return (
    <div>
      <div className='pb-3 flex items-center'>
        <h1 className='text-[2rem] leading-[2.75rem]'>Cart</h1>
      </div>
      <table className='w-full table-auto'>
        <thead className='border-t-0'>
          <tr className='text-ui-fg-subtle txt-medium-plus'>
            <th className='w-24'>Item</th>
            <th></th>
            <th className='text-center'>Quantity</th>
            <th className='hidden small:table-cell'>Price</th>
            <th className='text-center'>Total</th>
          </tr>
        </thead>
        <tbody>
          {region &&
            sortedItems.map((item) => {
              return <Item key={item.id} item={item} region={region} />;
            })}
        </tbody>
      </table>
    </div>
  );
};

export default ItemListFull;
