import { Accordion, CodeBlock, Markdown } from '../components';

import TaskApp from './examples/context/Task';
import { AddTaskCode, TaskCode, TasksContextCode, TaskListCode } from './examples/context/code';
import { memoCode, useCallbackCode, useMemoCode } from './examples/memo';

const propsEx = `
function getImageUrl(person, size = 's') {
  return (
    'https://i.imgur.com/' +
    person.imageId +
    size +
    '.jpg'
  );
}

function Avatar({ person, size }) {
  return (
    <img
      className="avatar"
      src={getImageUrl(person)}
      alt={person.name}
      width={size}
      height={size}
    />
  );
}

export default function Profile() {
  return (
    <div>
      <Avatar
        size={100}
        person={{ 
          name: 'Katsuko Saruhashi', 
          imageId: 'YfeOqp2'
        }}
      />
      <Avatar
        size={80}
        person={{
          name: 'Aklilu Lemma', 
          imageId: 'OKS67lh'
        }}
      />
      <Avatar
        size={50}
        person={{ 
          name: 'Lin Lanying',
          imageId: '1bX5QH6'
        }}
      />
    </div>
  );
}
`;

const stateEx = `
import { useState } from 'react';

export default function Counter() {
  const [count, setCount] = useState(0);

  function handleClick() {
    setCount(count + 1);
  }

  return (
    <button onClick={handleClick}>
      You pressed me {count} times
    </button>
  );
}
`;

const twoWayBindingCode = `
import React, { useState } from 'react';

function Counter() {
  const [count, setCount] = useState(0);

  function increment() {
    setCount(count + 1);
  }

  return (
    <div>
      <h1>{count}</h1>
      <button onClick={increment}>Increment</button>
    </div>
  );
}
`;

const uncontrolledCode = `
import React, { useRef } from "react";
 
function App() {
    const inputRef = useRef(null);
 
    function handleSubmit() {
        alert(\`Name: \${inputRef.current.value}\`);
    }
 
    return (
        <div className="App">
            <h1 className="geeks">GeeksForGeeks</h1>
            <h3>Uncontrolled Component</h3>
            <form onSubmit={handleSubmit}>
                <label>Name :</label>
                <input
                    type="text"
                    name="name"
                    ref={inputRef}
                />
                <button type="submit">Submit</button>
            </form>
        </div>
    );
}
`;

const eventEx = `
export default function Button() {
  function handleClick() {
    alert('You clicked me!');
  }

  return (
    <button onClick={handleClick}>
      Click me
    </button>
  );
}
`;

const renderListCode = `
const people = [
  {
    id: 0, // Used in JSX as a key
    name: 'Creola Katherine Johnson',
    profession: 'mathematician',
    accomplishment: 'spaceflight calculations',
    imageId: 'MK3eW3A',
  },
  {
    id: 1, // Used in JSX as a key
    name: 'Mario José Molina-Pasquel Henríquez',
    profession: 'chemist',
    accomplishment: 'discovery of Arctic ozone hole',
    imageId: 'mynHUSa',
  },
  {
    id: 2, // Used in JSX as a key
    name: 'Mohammad Abdus Salam',
    profession: 'physicist',
    accomplishment: 'electromagnetism theory',
    imageId: 'bE7W1ji',
  },
  {
    id: 3, // Used in JSX as a key
    name: 'Percy Lavon Julian',
    profession: 'chemist',
    accomplishment: 'pioneering cortisone drugs, steroids and birth control pills',
    imageId: 'IOjWm71',
  },
  {
    id: 4, // Used in JSX as a key
    name: 'Subrahmanyan Chandrasekhar',
    profession: 'astrophysicist',
    accomplishment: 'white dwarf star mass calculations',
    imageId: 'lrWQx8l',
  },
];

function getImageUrl(person) {
  return (
    'https://i.imgur.com/' +
    person.imageId +
    's.jpg'
  );
}

export default function List() {
  const listItems = people.map(person =>
    <li key={person.id}>
      <img
        src={getImageUrl(person)}
        alt={person.name}
      />
      <p>
        <b>{person.name}</b>
          {' ' + person.profession + ' '}
          known for {person.accomplishment}
      </p>
    </li>
  );
  return <ul>{listItems}</ul>;
}
`;

const compositeCode = `
const Container = ({ children }: { children: React.ReactNode }) => {
  return <div className='container'>{children}</div>;
};

const App = () => {
  return (
    <Container>
      <p>Hello world</p>
    </Container>
  );
};
`;

const sendDataParentToChildCode = `
function Parent() {
  const data = "Hello from parent";

return (
    <Child message={data} />
  );
}
// Child component
function Child({ message }: { message: string; }) {
  return (
    <div>{message}</div>
  );
}
`;

const sendDataChildToParentCode = `
import { useState } from 'react';

const Child = ({ sendDataToParent }: { sendDataToParent: (val: string) => void }) => {
  const [data, setData] = useState('');

  const handleClick = () => {
    sendDataToParent(data);
  }

  return (
    <div>
      <input type='text' value={data} onChange={(e) => setData(e.target.value)} />
      <button onClick={handleClick}>Send Data to Parent</button>
    </div>
  );
}

const Parent = () => {
  const [dataFromChild, setDataFromChild] = useState('');

  const handleDataFromChild = (data: string) => {
    setDataFromChild(data);
  }

  return (
    <div>
      <h1>Data from Child: {dataFromChild}</h1>
      <Child sendDataToParent={handleDataFromChild} />
    </div>
  );
}
`;

const sendDataChildsCode = `
import React, { useState } from 'react';

interface ChildAProps {
  onDataChange: (data: string) => void;
}

const ChildA: React.FC<ChildAProps> = ({ onDataChange }) => {
  const [input, setInput] = useState<string>('');

  const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    setInput(e.target.value);
  };

  const sendData = () => {
    onDataChange(input);
  };

  return (
    <div>
      <h2>Child A</h2>
      <input type='text' value={input} onChange={handleChange} />
      <button onClick={sendData}>Send Data to Child B</button>
    </div>
  );
};

interface ChildBProps {
  data: string;
}

const ChildB: React.FC<ChildBProps> = ({ data }) => {
  return (
    <div>
      <h2>Child B</h2>
      <p>Received Data: {data}</p>
    </div>
  );
};

const Parent: React.FC = () => {
  const [data, setData] = useState<string>('');

  const handleDataChange = (newData: string) => {
    setData(newData);
  };

  return (
    <div>
      <h1>Parent Component</h1>
      <ChildA onDataChange={handleDataChange} />
      <ChildB data={data} />
    </div>
  );
};
`;

const ReactPage = () => {
  return (
    <div className='mx-auto w-full divide-y divide-white/5 rounded-xl bg-white/5'>
      <Accordion title='What is React?'>
        <ul className='list-disc ps-8 font-normal'>
          <li>A JavaScript library for building reusable UI components</li>
          <li>Created by Facebook in 2011, released 2013</li>
          <li>Auto compile code & Refresh Screen (Dev Mode)</li>
          <li>ReacteJS (for Web) & React Native (for mobile)</li>
          <li>Application : WhatsApp, Instagram, Facebook</li>
          <li>Built around the component</li>
        </ul>
      </Accordion>
      <Accordion title='What is JSX?'>
        <ul className='list-disc ps-8 font-normal'>
          <li>
            JSX là phần mở rộng cú pháp cho JavaScript cho phép các nhà phát triển viết các thành phần giống HTML trong
            mã JavaScript của họ.
          </li>
          <li>Nó được sử dụng trong React để mô tả cấu trúc và nội dung của một thành phần.</li>
          <li>
            JSX được biên dịch thành JavaScript thuần túy trước khi được thực thi, do đó nó tương thích với tất cả các
            trình duyệt web.
          </li>
        </ul>
      </Accordion>
      <p>Có 2 loại components</p>
      <ul className='list-disc ps-8 font-normal'>
        <li>Class Component</li>
        <li>Functional Component (recommend)</li>
      </ul>
      <p className='mt-4'>Đặc điểm component</p>
      <ul className='list-disc ps-8 font-normal'>
        <li>Mọi thứ trong react thì được viết như một component</li>
        <li>Tính tái sử dụng component</li>
        <li>Split logic</li>
      </ul>
      <Accordion title='Component Stateless vs statefull'>
        <p>Statefull component</p>
        <ul className='list-disc ps-8 font-normal'>
          <li>Quản lý data, logic và gọi API</li>
          <li>Không quan tâm UI render như thế nào, chỉ quan tâm những gì nó render</li>
          <li>Bao gồm và quản lý những component con</li>
        </ul>
        <p className='mt-4'>Stateless component</p>
        <ul className='list-disc ps-8 font-normal'>
          <li>Hiện thị UI</li>
          <li>Có thể giải quyết những logic bên trong nó</li>
          <li>Tái sử dụng</li>
        </ul>
      </Accordion>
      <Accordion title='Styling'>
        <ul className='list-disc ps-8 font-normal'>
          <li>Inline styling (not recommend)</li>
          <li>Css in Css (module css, css file, scss, ...)</li>
          <li>Css in JS</li>
        </ul>
        <Accordion title='Inline styling'>
          <ul className='list-disc ps-8 font-normal'>
            <li>
              Pros:
              <ol>
                <li>Easy, fast writing</li>
              </ol>
            </li>
            <li>
              Cons:
              <ol>
                <li>Difficult management</li>
                <li>Cannot reuse</li>
              </ol>
            </li>
          </ul>
        </Accordion>
        <Accordion title='Css in Css'>
          <ul className='list-disc ps-8 font-normal'>
            <li>
              2 cách:
              <ol className='ps-4'>
                <li>CSS Stylesheet</li>
                <li>Css module</li>
              </ol>
            </li>
            <li>
              Css Stylesheet
              <ol className='ps-4'>
                <li>
                  Pros:
                  <ol className='ps-4'>
                    <li>Separate css from the component</li>
                    <li>Reusable</li>
                    <li>Easy writing</li>
                    <li>Can be used all the features of Traditional CSS (media query, pseudo-selectors, ...)</li>
                  </ol>
                </li>
                <li>
                  Cons:
                  <ol className='ps-4'>
                    <li>easy to conflict naming 🡺 overriding CSS code</li>
                    <li>cannot use state & props</li>
                  </ol>
                </li>
              </ol>
            </li>
            <li>
              Css Module
              <ol className='ps-4'>
                <li>
                  Pros:
                  <ol className='ps-4'>
                    <li>Similar to CSS Stylesheet</li>
                    <li>Package each component has 1 CSS Module</li>
                    <li>Can be used all the features of Traditional CSS (media query, pseudo-selectors, ...)</li>
                    <li>Auto generate a unique class name 🡪 never fear of conflict class name</li>
                  </ol>
                </li>
                <li>
                  Cons:
                  <ol className='ps-4'>
                    <li>Cannot use state & props</li>
                  </ol>
                </li>
              </ol>
            </li>
            <li>
              CSS in JS (Styled Component)
              <ol className='ps-4'>
                <li>
                  Pros:
                  <ol className='ps-4'>
                    <li>High applicability and reusability</li>
                    <li>Package CSS for each component</li>
                    <li>Can be used all the features of Traditional CSS (media query, pseudo-selectors, ...)</li>
                    <li>Auto generate a unique class name 🡪 never fear of conflict class name</li>
                    <li>Auto-prefixing for different browsers</li>
                    <li>Using props and state</li>
                  </ol>
                </li>
                <li>
                  Cons:
                  <ol className='ps-4'>
                    <li>CSS is in .js file (more codes)</li>
                  </ol>
                </li>
              </ol>
            </li>
          </ul>
        </Accordion>
      </Accordion>
      <Accordion title='Fragment'>
        <ul className='list-disc ps-8 font-normal'>
          <li>
            <Markdown>{`Quấn các phần tử trong <Fragment> để nhóm chúng lại với nhau trong những trường hợp bạn cần một phần tử duy nhất. Việc nhóm các phần tử trong Fragment không ảnh hưởng đến DOM kết quả; nó giống như khi các phần tử không được nhóm. Thẻ JSX trống <></> là viết tắt của <Fragment></Fragment> trong hầu hết các trường hợp.`}</Markdown>
          </li>
          <li>
            <Markdown>{`If you want to pass key to a Fragment, you can’t use the <>...</> syntax. You have to explicitly import Fragment from 'react' and render <Fragment key={yourKey}>...</Fragment>.`}</Markdown>
          </li>
        </ul>
      </Accordion>
      <Accordion title='Props'>
        <ul className='list-disc ps-8 font-normal'>
          <li>Stand for Properties</li>
          <li>Similar to HTML’s attribute, parameter of function</li>
          <li>Read-only, immutable</li>
          <li>Send data between parent component and child component</li>
          <li>Type: variable, expression JavaScript, props.children</li>
        </ul>
        <CodeBlock language='jsx' code={propsEx} />
      </Accordion>
      <Accordion title='State'>
        <ul className='list-disc ps-8 font-normal'>
          <li>Save data, information in component & auto re-render when changing data</li>
          <li>Only using in Class Component</li>
          <li>Scope: only a Component</li>
        </ul>
        <CodeBlock language='jsx' code={stateEx} />
      </Accordion>
      <Accordion title='State vs Props'>
        <table className='table-auto border'>
          <thead className='border'>
            <tr className='divide-x'>
              <th className='text-center p-2'>No.</th>
              <th className='text-center p-2'>Props</th>
              <th className='text-center p-2'>State</th>
            </tr>
          </thead>
          <tbody className='divide-y'>
            <tr className='divide-x'>
              <td className='text-center p-2'>1</td>
              <td className='text-center p-2'>Props are read-only</td>
              <td className='text-center p-2'>State changes can be asynchronous</td>
            </tr>
            <tr className='divide-x'>
              <td className='text-center p-2'>2</td>
              <td className='text-center p-2'>Immutable</td>
              <td className='text-center p-2'>Mutable</td>
            </tr>
            <tr className='divide-x'>
              <td className='text-center p-2'>3</td>
              <td className='text-center p-2'>
                Props allow you to pass data from one component to other components as an argument
              </td>
              <td className='text-center p-2'>State holds infomation about the components</td>
            </tr>
            <tr className='divide-x'>
              <td className='text-center p-2'>4</td>
              <td className='text-center p-2'>Props can be accessed by the child components</td>
              <td className='text-center p-2'>State can not be accessed by the child components</td>
            </tr>
            <tr className='divide-x'>
              <td className='text-center p-2'>5</td>
              <td className='text-center p-2'>Props are used to communicate between components</td>
              <td className='text-center p-2'>State can be used for rendering dynamic changes with the component</td>
            </tr>
            <tr className='divide-x'>
              <td className='text-center p-2'>6</td>
              <td className='text-center p-2'>Stateless component can have props</td>
              <td className='text-center p-2'>Stateless component cannot have state</td>
            </tr>
            <tr className='divide-x'>
              <td className='text-center p-2'>7</td>
              <td className='text-center p-2'>Props make components reusable</td>
              <td className='text-center p-2'>State cannot make components reusable</td>
            </tr>
            <tr className='divide-x'>
              <td className='text-center p-2'>8</td>
              <td className='text-center p-2'>Props are external and controlled by whatever renders the components</td>
              <td className='text-center p-2'>State are internal and controlled by React component itself</td>
            </tr>
          </tbody>
        </table>
      </Accordion>
      <Accordion title='Form'>
        <ul className='list-disc ps-8 font-normal space-y-4'>
          <li>
            Single source of truth
            <ol className='ps-8'>
              <li>There is only one object responsible for holding and updating the value</li>
            </ol>
          </li>
          <li>
            Controlled Component
            <ol className='ps-8'>
              <li>The data in the form is managed by React in the form of state or store 🡪 "single source of truth“</li>
              <li>Most forms are Controlled Component</li>
              <li>Re-render a lot</li>
              <li>
                2 Way binding
                <CodeBlock language='jsx' code={twoWayBindingCode} />
              </li>
            </ol>
          </li>
          <li>
            Uncontrolled Component
            <ol className='ps-8'>
              <li>
                The data in the form is directly managed by DOM (similar to traditional HTML) 🡪 "single source of truth“
              </li>
              <li>Using for Integrating Non-React code</li>
              <li>Not much re-rendering</li>
              <li>
                <CodeBlock language='jsx' code={uncontrolledCode} />
              </li>
            </ol>
          </li>
          <li>
            Controlled Component Vs Uncontrolled Component{' '}
            <table className='table-auto border mt-2'>
              <thead className='border'>
                <tr className='divide-x'>
                  <th className='text-center p-2'>No.</th>
                  <th className='text-center p-2'>Controlled Component</th>
                  <th className='text-center p-2'>Uncontrolled Component</th>
                </tr>
              </thead>
              <tbody className='divide-y'>
                <tr className='divide-x'>
                  <td className='text-center p-2'>1</td>
                  <td className='text-center p-2'>It maintains its state</td>
                  <td className='text-center p-2'>It does not maintain its state</td>
                </tr>
                <tr className='divide-x'>
                  <td className='text-center p-2'>2</td>
                  <td className='text-center p-2'>data controlled by the component</td>
                  <td className='text-center p-2'>data controlled by DOM itself</td>
                </tr>
                <tr className='divide-x'>
                  <td className='text-center p-2'>3</td>
                  <td className='text-center p-2'>It accepts its current value as a props</td>
                  <td className='text-center p-2'>It uses a ref for their current values</td>
                </tr>
                <tr className='divide-x'>
                  <td className='text-center p-2'>4</td>
                  <td className='text-center p-2'>Props can be accessed by the child components</td>
                  <td className='text-center p-2'>State can not be accessed by the child components</td>
                </tr>
                <tr className='divide-x'>
                  <td className='text-center p-2'>5</td>
                  <td className='text-center p-2'>It allows validation control</td>
                  <td className='text-center p-2'>It does not allow validation control</td>
                </tr>
                <tr className='divide-x'>
                  <td className='text-center p-2'>6</td>
                  <td className='text-center p-2'>It has better control over the form elements and data</td>
                  <td className='text-center p-2'>It has limited control over the form elements and data</td>
                </tr>
              </tbody>
            </table>
          </li>
        </ul>
      </Accordion>
      <Accordion title='Event'>
        <div>
          React cho phép bạn thêm trình xử lý sự kiện vào JSX của mình. Trình xử lý sự kiện là các hàm của riêng bạn sẽ
          được kích hoạt để phản hồi các tương tác như clicking, hovering, focusing form inputs, v.v.
          <CodeBlock code={eventEx} language='jsx' />
        </div>
      </Accordion>
      <Accordion title='Render List'>
        <p>
          Bạn thường muốn hiển thị nhiều thành phần tương tự từ một tập hợp dữ liệu. Bạn có thể sử dụng các phương thức
          mảng JavaScript để thao tác một mảng dữ liệu. Trên trang này, bạn sẽ sử dụng filter() và map() với React để
          lọc và chuyển đổi mảng dữ liệu của bạn thành một mảng các thành phần.
        </p>
        <CodeBlock language='jsx' code={renderListCode}></CodeBlock>
      </Accordion>
      <Accordion title='Share Data Between Components'>
        <ul className='list-disc ps-8 font-normal space-y-4'>
          <li>
            <Accordion title='Composition'>
              <CodeBlock code={compositeCode} language='jsx' />
            </Accordion>
          </li>
          <li>
            <Accordion title='Lifting State Up'>
              <Accordion title='Send data from parent to child component (down)'>
                <CodeBlock code={sendDataParentToChildCode} language='jsx' />
              </Accordion>
              <Accordion title='Send data from child to parent (up)'>
                <CodeBlock code={sendDataChildToParentCode} language='jsx' />
              </Accordion>
              <Accordion title='Send data between child components'>
                <CodeBlock code={sendDataChildsCode} language='tsx' />
              </Accordion>
            </Accordion>
          </li>
          <li>
            <Accordion title='Context'>
              <p>
                Thông thường, bạn sẽ truyền thông tin từ thành phần cha sang thành phần con thông qua props. Nhưng việc
                truyền props có thể trở nên rườm rà và bất tiện nếu bạn phải truyền chúng qua nhiều thành phần ở giữa
                hoặc nếu nhiều thành phần trong ứng dụng của bạn cần cùng một thông tin. Context cho phép thành phần cha
                cung cấp một số thông tin cho bất kỳ thành phần nào trong cây bên dưới nó—bất kể sâu đến đâu—mà không
                cần truyền thông tin đó thông qua props.
              </p>
              <h1 className='font-semibold mt-4 mb-2'>Example</h1>
              <TaskApp />
              <div className='space-y-2'>
                <Accordion title='TasksContext'>
                  <CodeBlock code={TasksContextCode} language='tsx' />
                </Accordion>
                <Accordion title='AddTask'>
                  <CodeBlock code={AddTaskCode} language='tsx' />
                </Accordion>
                <Accordion title='TaskList'>
                  <CodeBlock code={TaskListCode} language='tsx' />
                </Accordion>
                <Accordion title='Task'>
                  <CodeBlock code={TaskCode} language='tsx' />
                </Accordion>
              </div>
            </Accordion>
          </li>
          <li>
            <Accordion title='Life Cycle'>
              <ul className='list-disc ps-8 font-normal space-y-4'>
                <li>componentDidMount: executed after the first render .</li>
                <li>componentDidUpdate: executed after each update.</li>
                <li>componentWillUnmount: executed before the component is removed from the DOM.</li>
              </ul>
              <p className='my-4'>Sử dụng useEffect hooks: có 3 kiểu sử dụng cần nắm</p>
              <ul>
                <li>
                  <CodeBlock code={`useEffect(() => {\n // Todo\n })`} />
                  <p className='my-2'>callback call every component re-reder</p>
                </li>
                <li>
                  <CodeBlock code={`useEffect(() => {\n // Todo \n}, [])`} />
                  <p className='my-2'>callback call 1 time though component re-reder</p>
                </li>
                <li>
                  <CodeBlock code={`useEffect(() => {\n // Todo \n}, [dependencies])`} />
                  <p className='my-2'> callback call when dependencies changed</p>
                </li>
              </ul>
            </Accordion>
          </li>
        </ul>
      </Accordion>
      <Accordion title='Higher Order Component: memo'>
        <p>lets you skip re-rendering a component when its props are unchanged.</p>
        <p className='my-4'>Example</p>
        <CodeBlock code={memoCode} language='jsx' />
        <p className='my-4 font-medium'>
          React thường render lại một component bất cứ khi nào component cha render lại. Với memo, bạn có thể tạo một
          component mà React sẽ không render lại khi component cha render lại miễn là props mới của nó giống với props
          cũ. Một component như vậy được gọi là memoized.
        </p>
        <p className='my-4 font-medium'>
          Một component của React luôn phải có logic render thuần túy. Điều này có nghĩa là nó phải trả về cùng một đầu
          ra nếu props, state và context của nó không thay đổi. Bằng cách sử dụng memo, bạn đang cho React biết rằng
          thành phần của bạn tuân thủ yêu cầu này, do đó React không cần phải render lại miễn là props của nó không thay
          đổi. Ngay cả với memo, component của bạn sẽ render lại nếu trạng thái của chính nó thay đổi hoặc nếu context
          mà nó đang sử dụng thay đổi.
        </p>
        <p className='my-4 font-medium'>
          Ngay cả khi một thành phần được ghi nhớ, nó vẫn sẽ được render lại khi trạng thái của chính nó thay đổi. Ghi
          nhớ chỉ liên quan đến các prop được truyền đến thành phần từ thành phần cha của nó.
        </p>
        <p className='my-4 font-medium'>
          Khi bạn sử dụng memo, component của bạn sẽ render lại bất cứ khi nào prop nào đó không bằng giá trị trước đó.
          Điều này có nghĩa là React sẽ so sánh mọi prop trong component của bạn với giá trị trước đó của nó bằng cách
          sử dụng phép so sánh Object.is. Lưu ý rằng Object.is(3, 3) là true, nhưng Object.is({`{}`}, {`{}`}) là false.
        </p>
        <p className='my-4 font-medium'>
          Để tận dụng tối đa memo, hãy giảm thiểu thời gian prop thay đổi. Ví dụ, nếu prop là một đối tượng, hãy ngăn
          thành phần cha tạo lại đối tượng đó mỗi lần bằng cách sử dụng useMemo:
        </p>
        <p className='my-4 font-medium'>
          useMemo is a React Hook that lets you cache the result of a calculation between re-renders.
        </p>
        <CodeBlock language='jsx' code={useMemoCode} />
        <p className='my-4 font-medium'>
          Trong JavaScript, normal function ({`function() {}`}) hoặc arrow function {`() => {}`} luôn tạo ra một hàm
          khác, tương tự như cách object {`{}`} luôn tạo ra một object mới. Thông thường, điều này sẽ không thành vấn
          đề, nhưng điều đó có nghĩa là các prop trong component sẽ không bao giờ giống nhau và tối ưu hóa memo của bạn
          sẽ không hoạt động. Đây là lúc useCallback trở nên hữu ích:
        </p>
        <p className='my-4 font-medium'>
          useCallback is a React Hook that lets you cache a function definition between re-renders.
        </p>
        <CodeBlock language='jsx' code={useCallbackCode} />
        <p className='my-4 font-medium'>
          Lưu ý về dependencies trong useEffect, useCallback, useMemo: không được sử dụng Reference Type: array, object,
          function,...
        </p>
        <p className='my-4 font-medium'>
          Nếu sử dụng Reference Type thì phải dụng dụng useCallback với function và useMemo với object, array
        </p>
        <p className='my-4 font-medium'>
          Khi sử dụng memo thì phải sử dụng useCallback, useMemo với Reference Type và ngược lại
        </p>
        <p className='my-4 font-medium'>
          Chú ý: sử dụng khi component có data props phức tạp, nhiều props, render lại nhiều lần. Tránh sử dụng vô tội
          vạ. Vì Khi sử dụng memo, useCallback, useMemo thì nó sẽ tốn bộ nhớ
        </p>
      </Accordion>
      <Accordion title='useRef vs createRef'>
        <p className='my-4 font-medium'>
          useRef là một hook sử dụng cùng một ref trong suốt quá trình. Nó lưu giá trị của nó giữa các lần render lại
          trong một thành phần chức năng và không tạo một phiên bản mới của ref cho mỗi lần render lại. Nó duy trì ref
          hiện có giữa các lần render lại.
        </p>
        <p className='my-4 font-medium'>
          createRef là một hàm tạo một ref mới mỗi lần. Không giống như useRef, nó không lưu giá trị của nó giữa các lần
          render lại, thay vào đó tạo một phiên bản mới của ref cho mỗi lần render lại. Do đó ngụ ý rằng nó không duy
          trì ref hiện có giữa các lần render lại.
        </p>
        <p className='my-4 font-medium'>Node: createRef is mostly used for class components. Function components typically rely on useRef instead.</p>
      </Accordion>
    </div>
  );
};

export default ReactPage;
