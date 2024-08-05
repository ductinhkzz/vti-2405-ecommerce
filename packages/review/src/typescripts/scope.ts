// Khi nói đến scope thì chúng ta phải nhắc đến toán tử khai báo: var, let và const

// var: ra đời đầu tiên
// có 2 scope: function scope và global scope

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

// let,const có từ phiên bản es5
// có 2 scope: global  scope và block scope
//block scope vs function scope khác nhau như thế nào?
// - block scope thì cứ nằm trong 2 dấu ngoặc nhọn là 1 scope { //scope }
// - function scope thì thì nó chỉ hoạt động trong function

let username = 'tinh.le';

{
  let username = 'tinh.le2';
  console.log(username); // tinh.le2
}

if (username) {
  let username = 'tinh.le3';
  console.log(username); // tinh.le3
}

console.log(username); //tinh.le

// Function

// Normal function

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

// Arrow fucntion: có từ ES5
const func3 = () => {
  console.log('func3');
};

//Khác biệt giữa normal function và Arrow fucntion

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

//Closer function: một closure cho phép bạn truy cập vào phạm vi của một hàm bên ngoài từ một hàm bên trong
//Trong JavaScript, closure được tạo ra mỗi khi một hàm được tạo ra, tại thời điểm tạo hàm.

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

// Destructuring
// array
const arr = [1, 2];
const [x, y] = arr;
console.log(x); // 1
console.log(y); // 2

//object
const user = {
  id: 1,
  fullName: 'Tinh',
};

const { id, fullName } = user;
console.log(id); //1
console.log(fullName); // Tinh

//Template String

const messages = `Welcome ${fullName} with id ${id}`;
console.log(messages);

// Three dots Operator: ...
//Copy array, object

const arr1 = [...arr, 3];
console.log(arr1); // [1, 2, 3]
const user2 = { ...user, age: 25 };
console.log(user2); // { id: 1, name: 'Tinh', age: 25 }

///Higher Order Function
// Là một function nhận đầu vào là 1 function và return về 1 function hay 1 function mà bọc bởi 1 function khác

const calculate = (x: number, y: number, operator: (x: number, y: number) => number) => {
  return operator(x, y);
};

const plus = (x: number, y: number) => x + y;
const minus = (x: number, y: number) => x - y;
const multiply = (x: number, y: number) => x * y;

console.log(calculate(2, 3, plus)); //5
console.log(calculate(2, 3, minus)); // -1
console.log(calculate(2, 3, multiply)); // 6

//Reduce method của array

//Tính tổng của arr1
const total = arr1.reduce((pre, curr) => {
  return pre + curr;
}, 0);
console.log('reduce', total); //6

//Currying function: một kỹ thuật trong lập trình hàm, biến đổi hàm của nhiều đối số thành nhiều hàm của một đối số theo trình tự.

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

//Parameter

//Default Parameter
const calculateNumber = (x: number, y: number = 0) => {
  return x * y;
};

console.log(calculateNumber(4)); // 0
console.log(calculateNumber(4, 5)); // 20

//Rest Parameter
const calculateNumber1 = (x: number, y: number, ...rest: number[]) => {
  const multiply = rest.reduce((pre, curr) => pre * curr, 1);
  return x * y * multiply;
};

console.log(calculateNumber1(1, 2)); // 2
console.log(calculateNumber1(1, 2, 3, 4)); // 24

//Optional Parameter
const calculateNumber2 = (x: number, y?: number) => {
  if (typeof y === 'undefined') {
    return x;
  }

  return x * y;
};

console.log(calculateNumber2(4)); // 4
console.log(calculateNumber2(4, 5)); // 20