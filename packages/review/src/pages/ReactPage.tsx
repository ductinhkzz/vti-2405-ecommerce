import { Accordion, CodeBlock, Markdown } from '../components';

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
    </div>
  );
};

export default ReactPage;
