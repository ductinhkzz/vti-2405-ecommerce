export const AddTaskCode = `
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
`

export const TasksContextCode = `
import { createContext } from 'react';

export const TasksContext = createContext<any>(null);
export const TasksDispatchContext = createContext<any>(null);
`

export const TaskCode = `
import { useReducer } from 'react';
import AddTask from './AddTask';
import TaskList, { ITask } from './TaskList';
import { TasksContext, TasksDispatchContext } from './TasksContext';

export default function TaskApp() {
  const [tasks, dispatch] = useReducer(tasksReducer, initialTasks);

  return (
    <TasksContext.Provider value={tasks}>
      <TasksDispatchContext.Provider value={dispatch}>
        <h1>Day off in Kyoto</h1>
        <AddTask />
        <TaskList />
      </TasksDispatchContext.Provider>
    </TasksContext.Provider>
  );
}

function tasksReducer(tasks: ITask[], action: any) {
  switch (action.type) {
    case 'added': {
      return [
        ...tasks,
        {
          id: action.id,
          text: action.text,
          done: false,
        },
      ];
    }
    case 'changed': {
      return tasks.map((t) => {
        if (t.id === action.task.id) {
          return action.task;
        } else {
          return t;
        }
      });
    }
    case 'deleted': {
      return tasks.filter((t) => t.id !== action.id);
    }
    default: {
      throw Error('Unknown action: ' + action.type);
    }
  }
}

const initialTasks = [
  { id: 0, text: 'Philosopher’s Path', done: true },
  { id: 1, text: 'Visit the temple', done: false },
  { id: 2, text: 'Drink matcha', done: false },
];
`

export const TaskListCode = `
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
`