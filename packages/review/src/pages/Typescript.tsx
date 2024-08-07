import { Accordion, CodeBlock } from '../components';

const dataType = `
  const numberValue: number = 0;
  const stringValue: string = 'sssss';
  const booleanValue: boolean = false;
  const testFunc = () => {
    // Todo here
  };

  const voidVal: void = testFunc();
  const undefinedVal: undefined = undefined;
  const nullVal: null = null;

  // Null vs Undefined
  console.log(typeof nullVal); //object
  console.log(typeof undefinedVal); //undefined

  console.log(nullVal === undefinedVal); //false
  console.log(nullVal == undefinedVal); //true
`;

const unionType = `
  type UnionValType = string | number;
  const unionVal1: UnionValType = 'sssss';
  const unionVal2: UnionValType = 123213;

  type UnionStrType = 'a' | 'b' | 'c';
  const unionVal3: UnionStrType = 'a';
`;

const dateType = `
  const currDate: Date = new Date();
`;

const arrayType = `
  const arr1: string[] = ['1', '2'];
  const arr2: Array<string> = ['1', '2'];
  const arr3: UnionValType[] = [1, '2'];
`;

const mapType = `
  const map = new Map<string, string>();
  map.set('a', 'aaaaa');
  map.set('b', 'bbbbb'); // set new value
  console.log(map.has('a')); // true
  console.log(map.delete('a')); // true
  console.log(map.has('a')); // false
  console.log(map.get('b')); // bbbbb
`;

const setType = `
  const set = new Set<string>();
  set.add('a');
  set.add('b');
  console.log(set.size); // 2
  console.log(set.delete('a')); // true
  console.log(set.has('a')); // false

`;

const enumType = `
  enum Gender1 {
    Male,
    Female,
  }

  enum Gender2 {
    Male = 'Male',
    Female = 'Female',
  }

  console.log(Gender1.Male); // 0
  console.log(Gender2.Male); // Male
`;

const otherType = `
  // Any type: giống như js thuần

  const anyValue1: any = 1231;
  const anyValue2: any = '1231';

  // Ngoài ra: never, unknown

  const unknownVal: unknown = 'dddd';
`;

const interfaceType = `
  interface IUser {
    id: string;
    name: string;
    age: number;
  }

  const user: IUser = {
    id: '1',
    name: 'Tinh Le',
    age: 27,
  };

  console.log(user);
`;

const typeType = `
  type UserType = {
    id: string;
    name: string;
    age: number;
  };

  const user: UserType = {
    id: '1',
    name: 'Tinh Le',
    age: 27,
  };

  console.log(user);
`;

const interfaceExtends = `
  interface IBase {
    id: string;
  }

  interface IUser extends IBase {
    name: string;
    age: number;
    classes: number;
  }  
`;

const classType = `
  interface IBaseService {
    user: IUser;
    setUser: (user: IUser) => void;
    getUser: () => IUser;
  }

  abstract class BaseService implements IBaseService {
    user: IUser;
    constructor(user: IUser) {
      this.user = user;
    }

    setUser(user: IUser) {
      this.user = user;
    }

    getUser(): IUser {
      return this.user;
    }

    setUserName(_name: string): void {}
  }

  //abstract class: không thể khởi tạo (new BaseService(user)) => báo lỗi
  //extends: kế thừa
  class UserService extends BaseService {
    setUserName(name: string) {
      // OVeride
      this.user.name = name;
    }
  }

  const userService = new UserService(user);
  console.log(userService);
`;

const genericType = `
  //Generic: props 1 type hay nhiều cho type, interface,class

  type OptionType<T> = {
    value: T;
    label: string;
  };

  const option: OptionType<number> = {
    value: 1111,
    label: '123313',
  };
  const optionUser: OptionType<IUser> = {
    value: user,
    label: '123313',
  };

  interface IOptionType<T> {
    value: T;
    label: string;
  }

  const option1: IOptionType<number> = {
    value: 1111,
    label: '123313',
  };
  const optionUser1: IOptionType<IUser> = {
    value: user,
    label: '123313',
  };

  abstract class BaseDataSerivce<T extends object = {}> {
    data!: T;
    constructor(data: T) {
      this.data = data;
    }

    getData(): T {
      return this.data;
    }

    setData(_data: T) {}
  }

  class DataService<T extends object = {}> extends BaseDataSerivce<T> {
    setData(_data: T): void {
      this.data = _data;
    }
  }

  const usrService = new DataService<IUser>(user);
`;

const dataTypeCasting = `
  // Datatype Casting: ép kiểu

  // arr3: có kiểu UnionValType[]
  export const arr4  = [...arr3] as string[]
`;

const varCode = `
  var name = 'Tinh';

  function testFucn() {
    var name = 'Tinh Le';
    console.log(name); // Tinh Le
  }
  // function scope sẽ lấy giá trị đã được định nghĩa lại trong function và chỉ dùng trong function đó không ảnh hưởng giá trị name bên ngoài
  testFucn();

  console.log(name); // Tinh

  // lệnh if, vòng lặp: thì nó vẫn là global scope, nếu như định nghĩa lại thì nó nó sẽ lấy định nghĩa này
  if (name) {
    var name = 'Tinh Le 2';
  }

  console.log(name); // Tinh Le 2
`;

const letConstCode = `
  let username = 'tinh.le';

  {
    let username = 'tinh.le2';
    console.log(username); // tinh.le2
  }

  if (username) {
    let username = 'tinh.le3';
    console.log(username); // tinh.le3
  }

  console.log(username); //tinh.le`;

const normalFuncCode = `
  function func1() {
    console.log('func1');
  }

  // Reference Function
  const func21 = function func1() {
    // có function name
    console.log('func21');
  };

  const func22 = function () {
    // ko có function name
    console.log('func22');
  };
`;

const arrowFunc = `
// Arrow fucntion: có từ ES5
const func3 = () => {
  console.log('func3');
};
`;

const normalVsArrowFunc = `
const person = {
  firstName: 'Tinh',
  lastName: 'Le',
  fullName: function (msg: string) {
    return this.firstName + ' ' + this.lastName + ': ' + msg;
  },
  fullName2: () => {
    return this;
  },
};
console.log(person.fullName('Text')); // Tinh Le: Text;
console.log(person.fullName.call({ firstName: 'Tinh 2', lastName: 'Le 2' }, 'Text')); // Tinh 2 Le 2;
console.log(person.fullName.bind({ firstName: 'Tinh 3', lastName: 'Le 3' })('Text')); // Tinh 3 Le 3;
console.log(person.fullName.apply({ firstName: 'Tinh 4', lastName: 'Le 4' }, ['Text'])); // Tinh 4 Le 4;

// arrow function ko có this
console.log(person.fullName2()); //Undefined
`;

const closureFunc = `
//example 1
const makeCounter = function () {
  let privateCounter = 0;
  function changeBy(val: number) {
    privateCounter += val;
  }
  return {
    increment() {
      changeBy(1);
    },

    decrement() {
      changeBy(-1);
    },

    value() {
      return privateCounter;
    },
  };
};

const counter1 = makeCounter();
const counter2 = makeCounter();

console.log(counter1.value()); // 0.

counter1.increment();
counter1.increment();
console.log(counter1.value()); // 2.

counter1.decrement();
console.log(counter1.value()); // 1.
console.log(counter2.value()); // 0.
`;

const closureFunc2 = `
// example 2
function makeAdder(x: number) {
  return function (y: number) {
    return x + y;
  };
}

const add5 = makeAdder(5);
const add10 = makeAdder(10);

console.log(add5(2)); // 7
console.log(add10(2)); // 12
`;

const destructuringArr = `
const arr = [1, 2];
const [x, y] = arr;
console.log(x); // 1
console.log(y); // 2
`;

const destructuringObj = `
const user = {
  id: 1,
  fullName: 'Tinh',
};

const { id, fullName } = user;
console.log(id); //1
console.log(fullName); // Tinh
`;

const threeDots = `
//Copy array, object

const arr1 = [...arr, 3];
console.log(arr1); // [1, 2, 3]
const user2 = { ...user, age: 25 };
console.log(user2); // { id: 1, name: 'Tinh', age: 25 }
`;

const hofCode = `
const calculate = (x: number, y: number, operator: (x: number, y: number) => number) => {
  return operator(x, y);
};

const plus = (x: number, y: number) => x + y;
const minus = (x: number, y: number) => x - y;
const multiply = (x: number, y: number) => x * y;

console.log(calculate(2, 3, plus)); //5
console.log(calculate(2, 3, minus)); // -1
console.log(calculate(2, 3, multiply)); // 6
`;
const reduceCode = `
//Tính tổng của arr1
const total = arr1.reduce((pre, curr) => {
  return pre + curr;
}, 0);
console.log('reduce', total); //6
`;
const curryingFunc = `
function calculateVolume(length: number) {
  return function (breadth: number) {
    return function (height: number) {
      return length * breadth * height;
    };
  };
}

const calculateVolume4 = calculateVolume(4);
const calculateBreadth46 = calculateVolume4(6);

console.log(calculateBreadth46(6)); // 144
`;

const defaultParams = `
const calculateNumber = (x: number, y: number = 0) => {
  return x * y;
};

console.log(calculateNumber(4)); // 0
console.log(calculateNumber(4, 5)); // 20
`;

const restParams = `
const calculateNumber1 = (x: number, y: number, ...rest: number[]) => {
  const multiply = rest.reduce((pre, curr) => pre * curr, 1);
  return x * y * multiply;
};

console.log(calculateNumber1(1, 2)); // 2
console.log(calculateNumber1(1, 2, 3, 4)); // 24
`;

const optionalParams = `
const calculateNumber2 = (x: number, y?: number) => {
  if (typeof y === 'undefined') {
    return x;
  }

  return x * y;
};

console.log(calculateNumber2(4)); // 4
console.log(calculateNumber2(4, 5)); // 20
`;

const callbackCode = `
const callback1 = () => {
  console.log('=============callback1===============');
};
const callback2 = (callback: () => void) => {
  console.log('=============callback2===============');
  callback();
};

callback2(callback1);
`;

const promiseCode1 = `
const promise = (x: number) => {
  return new Promise<number>((resolve, reject) => {
    if (x > 5) resolve(x);
    else reject(new Error('Invalid'));
  });
};
promise(4)
  .then((value) => {
    console.log(value); // Không vào
  })
  .catch((error) => {
    console.log(error); // Error: Invalid
  });
`;

const promiseCode2 = `
promise(6)
  .then((value) => {
    console.log(value); // 6
  })
  .catch((error) => {
    console.log(error); // Không vào
  });
`;

const promiseCode3 = `
// Promise chain
promise(6)
  .then((value) => {
    console.log(value); // 6
    return promise(7);
  })
  .then((value) => {
    console.log(value); // 7
    return promise(8);
  })
  .then((value) => {
    console.log(value); // 8
    return promise(9);
  })
  .then((value) => {
    console.log(value); // 9
  });
`;

const asyncCode1 = `
async function promiseCall() {
  try {
    const val1 = await promise(6);
    console.log('promiseCall', val1); // 6
  } catch (error) {
    console.log(error);
  }

  try {
    const val1 = await promise(7);
    console.log('promiseCall', val1); // 7
  } catch (error) {
    console.log(error);
  }
  try {
    const val1 = await promise(4);
    console.log(val1); // ko console
  } catch (error) {
    console.log(error);
  }
}
promiseCall();
`;

const asyncCode2 = `
function sleep(s: number) {
  return new Promise((resolve) => setTimeout(resolve, s * 1000));
}

const func1 = () => sleep(5).then(() => 'func1');
const func2 = () => sleep(3).then(() => 'func2');
const func3 = () => sleep(4).then(() => 'func3');

const callPromise = async () => {
  console.log(await Promise.all([func1(), func2(), func3()]));
};
callPromise(); // after 5s sẽ có kết quả;
`;

const asyncCode3 = `
const callAsync = async () => {
  const starttime = new Date().getTime()
  console.log(await func1());
  console.log(await func2());
  console.log(await func3());
  console.log(new Date().getTime() - starttime)
};

callAsync(); // sau 5s sẽ hiện func1, tiếp đến sau 3 s sẽ hiện func2, cuối cùng sau 4s sẽ hiện func3
`;

const asyncCode4 = `
const callAsync2 = async () => {
  const f1 = func1();
  const f2 = func2();
  const f3 = func3();
  const starttime = new Date().getTime()
  console.log(await f1);
  console.log(await f2);
  console.log(await f3);
  console.log(new Date().getTime() - starttime)
};

callAsync2(); // Giống như Promise.all([func1(), func2(), func3()])
`;

const Typescript = () => {
  return (
    <div className='mx-auto w-full divide-y divide-white/5 rounded-xl bg-white/5'>
      <ul className='font-semibold list-decimal'>
        <li className='font-normal'>
          <h5 className='font-semibold text-lg'>Data type</h5>
          <Accordion title='Primitive: number, string, boolean, void, undefined, null'>
            <CodeBlock code={dataType} />
          </Accordion>
          <Accordion title='Union'>
            <CodeBlock code={unionType} />
          </Accordion>
          <Accordion title='Date'>
            <CodeBlock code={dateType} />
          </Accordion>
          <Accordion title='Array'>
            <CodeBlock code={arrayType} />
          </Accordion>
          <Accordion title='Map'>
            <CodeBlock code={mapType} />
          </Accordion>
          <Accordion title='Set'>
            <CodeBlock code={setType} />
          </Accordion>
          <Accordion title='Enum'>
            <CodeBlock code={enumType} />
          </Accordion>
          <Accordion title='Any, unknown, never'>
            <CodeBlock code={otherType} />
          </Accordion>
          <Accordion title='Interface/ Type'>
            <div className='flex flex-col space-y-4'>
              <CodeBlock code={interfaceType} />
              <CodeBlock code={typeType} />
              <p>Interface có thể extends</p>
              <CodeBlock code={interfaceExtends} />
              <p>Note</p>
              <ul className='list-disc ps-8 font-normal'>
                <li>interface: tạo mới giống tên được, type không thể tạo mới giống tên.</li>
                <li>interface: có thể extends từ 1 interface khác</li>
                <li>Khi nào dùng interface, khi nào dùng type?</li>
                <li>Thực chất dùng cái nào cũng được</li>
                <li>
                  Tốt hơn thì, những kiểu dữ liệu mà không cần mở rộng nhiều và dùng đến opp (extends, implements) thì
                  dùng type và ngược lại
                </li>
              </ul>
            </div>
          </Accordion>
          <Accordion title='Class'>
            <CodeBlock code={classType} />
          </Accordion>
          <Accordion title='Generic'>
            <CodeBlock code={genericType} />
          </Accordion>
          <Accordion title='Datatype Casting'>
            <CodeBlock code={dataTypeCasting} />
          </Accordion>
        </li>
        <li className='font-normal'>
          <h5 className='font-semibold text-lg'>Module</h5>
          <Accordion title='import từ export default'>
            <CodeBlock code={`import DataService from './data-type';`} />
          </Accordion>
          <Accordion title='import từ export default đổi tên'>
            <CodeBlock code={`import DataServiceExample from './data-type';`} />
          </Accordion>
          <Accordion title='import module'>
            <CodeBlock code={`import { arr4 } from './data-type';`} />
          </Accordion>
          <Accordion title='import module và đổi tên'>
            <CodeBlock code={`import { arr4 as arr5 } from './data-type';`} />
          </Accordion>
        </li>
        <li className='font-normal'>
          <h5 className='font-semibold'>Scope</h5>
          <ul className='list-disc ps-8 font-normal'>
            <li>Khi nói đến scope thì chúng ta phải nhắc đến toán tử khai báo: var, let và const</li>
            <li>var: ra đời đầu tiên</li>
            <li>var có 2 scope: function scope và global scope</li>
          </ul>
          <Accordion title='Var'>
            <CodeBlock code={varCode} />
          </Accordion>
          <ul className='list-disc ps-8 font-normal'>
            <li>let,const có từ phiên bản es5</li>
            <li>let,const: có 2 scope: global scope và block scope</li>
            <li>block scope vs function scope khác nhau như thế nào?</li>
            <li>
              - block scope thì cứ nằm trong 2 dấu ngoặc nhọn là 1 Scope
              <CodeBlock code={`{ \n  //scope\n}`} />
            </li>
            <li>- function scope thì thì nó chỉ hoạt động trong function</li>
          </ul>
          <CodeBlock code={letConstCode} />
        </li>
        <li className='font-normal'>
          <h5 className='font-semibold text-lg'>Function</h5>
          <Accordion title='Normal function'>
            <CodeBlock code={normalFuncCode} />
          </Accordion>
          <Accordion title='Arrow function'>
            <CodeBlock code={arrowFunc} />
          </Accordion>
          <Accordion title='Khác biệt giữa normal function và Arrow function'>
            <CodeBlock code={normalVsArrowFunc} />
          </Accordion>
          <Accordion title='Closer function'>
            <div className='flex flex-col space-y-4'>
              <ul className='list-disc ps-8 font-normal'>
                <li>
                  Closer function: một closure cho phép bạn truy cập vào phạm vi của một hàm bên ngoài từ một hàm bên
                  trong
                </li>
                <li>Trong JavaScript, closure được tạo ra mỗi khi một hàm được tạo ra, tại thời điểm tạo hàm.</li>
              </ul>
              <CodeBlock code={closureFunc} />
              <CodeBlock code={closureFunc2} />
            </div>
          </Accordion>
        </li>
        <li className='font-normal'>
          <h5 className='font-semibold text-lg'>Destructuring</h5>
          <Accordion title='Array'>
            <CodeBlock code={destructuringArr} />
          </Accordion>
          <Accordion title='Object'>
            <CodeBlock code={destructuringObj} />
          </Accordion>
        </li>
        <li className='font-normal'>
          <h5 className='font-semibold text-lg'>Template String</h5>
          <CodeBlock code={`const messages = \`Welcome \${fullName} with id \${id}\`;\nconsole.log(messages);`} />
        </li>
        <li className='font-normal mt-4'>
          <h5 className='font-semibold text-lg'>Three dots Operator</h5>
          <CodeBlock code={threeDots} />
        </li>
        <li className='font-normal mt-4'>
          <h5 className='font-semibold text-lg'>Higher Order Function</h5>
          <p className='my-2'>
            Là một function nhận đầu vào là 1 function và return về 1 function hay 1 function mà bọc bởi 1 function khác
          </p>
          <CodeBlock code={hofCode} />
        </li>
        <li className='font-normal mt-4'>
          <h5 className='font-semibold text-lg'>Reduce method của array</h5>
          <CodeBlock code={reduceCode} />
        </li>
        <li className='font-normal mt-4'>
          <h5 className='font-semibold text-lg'>Currying function</h5>
          <p className='my-2'>
            một kỹ thuật trong lập trình hàm, biến đổi hàm của nhiều đối số thành nhiều hàm của một đối số theo trình
            tự.
          </p>
          <CodeBlock code={curryingFunc} />
        </li>
        <li className='font-normal mt-4'>
          <h5 className='font-semibold text-lg'>Parameter</h5>
          <Accordion title='Default Parameter'>
            <CodeBlock code={defaultParams} />
          </Accordion>
          <Accordion title='Rest Parameter'>
            <CodeBlock code={restParams} />
          </Accordion>
          <Accordion title='Optional Parameter'>
            <CodeBlock code={optionalParams} />
          </Accordion>
        </li>
        <li className='font-normal mt-4'>
          <h5 className='font-semibold text-lg'>Callback, Promise and Async/await</h5>
          <Accordion title='Callback'>
            <div className='flex flex-col space-y-4'>
              <p>1 function truyền như 1 parameter qua 1 function</p>
              <CodeBlock code={callbackCode} />
              <ul className='list-disc ps-8 font-normal'>
                <li>Dễ xảy ra tình trạng Callback hell (là gọi nhiều callback lồng vào nhau)</li>
                <li>Khó debug, bad code</li>
                <li>Vì vậy Dùng Promise / Async/Await</li>
              </ul>
            </div>
          </Accordion>
          <Accordion title='Promise'>
            <div className='flex flex-col space-y-4'>
              <CodeBlock code={promiseCode1} />
              <CodeBlock code={promiseCode2} />
              <CodeBlock code={promiseCode3} />
            </div>
          </Accordion>
          <Accordion title='Async/await'>
            <div className='flex flex-col space-y-4'>
              <CodeBlock code={asyncCode1} />
              <CodeBlock code={asyncCode2} />
              <CodeBlock code={asyncCode3} />
              <CodeBlock code={asyncCode4} />
              <p>Promise.all : thực thi và trả kết quả nếu ko có lỗi</p>
              <p>
                Ngoài ra Promise.race: thực thi và kết quả ko lỗi và chỉ trả về 1 kết quả của promise thực thi nhanh
                nhất
              </p>
              <p>Promise.any: thì nó sẽ thực thi và trả kết quả kể cả lỗi</p>
            </div>
          </Accordion>
        </li>
      </ul>
    </div>
  );
};

export default Typescript;
