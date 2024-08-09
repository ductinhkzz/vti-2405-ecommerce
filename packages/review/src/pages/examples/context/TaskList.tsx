import { useContext, useState } from 'react';
import { TasksContext, TasksDispatchContext } from './TasksContext';

export interface ITask {
  id: number;
  text: string;
  done: boolean;
}

type TaskProps = {
  task: ITask;
};

const Task = ({ task }: TaskProps) => {
  const dispatch = useContext(TasksDispatchContext);
  const [isEditing, setIsEditing] = useState(false);
  let taskContent;
  if (isEditing) {
    taskContent = (
      <>
        <input
          value={task.text}
          onChange={(e) => {
            dispatch({
              type: 'changed',
              task: {
                ...task,
                text: e.target.value,
              },
            });
          }}
          className='border p-1 rounded-md mx-2'
        />
        <button onClick={() => setIsEditing(false)} className='border p-1 rounded-md mx-2'>
          Save
        </button>
      </>
    );
  } else {
    taskContent = (
      <>
        {task.text}
        <button className='border p-1 rounded-md mx-2' onClick={() => setIsEditing(true)}>
          Edit
        </button>
      </>
    );
  }
  return (
    <label className='my-2'>
      <input
        className='border p-1 rounded-md mx-2'
        type='checkbox'
        checked={task.done}
        onChange={(e) => {
          dispatch({
            type: 'changed',
            task: {
              ...task,
              done: e.target.checked,
            },
          });
        }}
      />
      {taskContent}
      <button
        onClick={() => {
          dispatch({
            type: 'deleted',
            id: task.id,
          });
        }}
        className='border p-1 rounded-md mx-2'
      >
        Delete
      </button>
    </label>
  );
};

const TaskList = () => {
  const tasks: any[] = useContext(TasksContext);
  return (
    <ul>
      {tasks.map((task) => (
        <li key={task.id} className='my-2'>
          <Task task={task} />
        </li>
      ))}
    </ul>
  );
};

export default TaskList;
