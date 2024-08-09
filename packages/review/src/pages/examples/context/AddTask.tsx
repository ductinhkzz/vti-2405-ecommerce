import { useContext, useState } from 'react';
import { TasksDispatchContext } from './TasksContext';

let nextId = 3;

const AddTask = () => {
  const [text, setText] = useState('');
  const dispatch = useContext(TasksDispatchContext);
  return (
    <div className='my-2'>
      <input
        placeholder='Add task'
        value={text}
        onChange={(e) => setText(e.target.value)}
        className='border p-1 rounded-md mr-2'
      />
      <button
        className='border p-1 rounded-md'
        onClick={() => {
          setText('');
          dispatch({
            type: 'added',
            id: nextId++,
            text: text,
          });
        }}
      >
        Add
      </button>
    </div>
  );
};

export default AddTask;
