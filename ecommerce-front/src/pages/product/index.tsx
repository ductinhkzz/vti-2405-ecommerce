import { decrement, increment } from '@/redux/reducers/counterReducer';
import { useRedux } from '@/hooks';

const Product = () => {
  const { dispatch, appSelector } = useRedux();
  const count = appSelector((state) => state.counter.value);
  return (
    <div>
      <div className='flex gap-x-4'>
        <button aria-label='Increment value' onClick={() => dispatch(increment())}>
          Increment
        </button>
        <span>{count}</span>
        <button aria-label='Decrement value' onClick={() => dispatch(decrement())}>
          Decrement
        </button>
      </div>
    </div>
  );
};

export default Product;
