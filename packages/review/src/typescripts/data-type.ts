// Primitive: number, string, boolean, void, undefined, null

const numberValue: number = 0;
const stringValue: string = 'sssss';
const booleanValue: boolean = false;

const testFunc = () => {
  console.log('===============testFunc=============');
  console.log();
  console.log('============================');
};

const voidVal: void = testFunc();
const undefinedVal: undefined = undefined;
const nullVal: null = null;

// Null vs Undefined
console.log(typeof nullVal); //object
console.log(typeof undefinedVal); //undefined

console.log(nullVal === undefinedVal); //false
console.log(nullVal == undefinedVal); //true

//Union Datatype
type UnionValType = string | number;
const unionVal1: UnionValType = 'sssss';
const unionVal2: UnionValType = 123213;

type UnionStrType = 'a' | 'b' | 'c';
const unionVal3: UnionStrType = 'a';

//User-Defined Type: Reference Type => Object,  Array, Date, Map, Set, Enum, Class
// Date
const currDate: Date = new Date();
// Array
const arr1: string[] = ['1', '2'];
const arr2: Array<string> = ['1', '2'];
const arr3: UnionValType[] = [1, '2'];

const map = new Map<string, string>();
map.set('a', 'aaaaa');
map.set('b', 'bbbbb'); // set new value
console.log(map.has('a')); // true
console.log(map.delete('a')); // true
console.log(map.has('a')); // false
console.log(map.get('b')); // bbbbb

const set = new Set<string>();
set.add('a');
set.add('b');
console.log(set.size); // 2
console.log(set.delete('a')); // true
console.log(set.has('a')); // false

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

// Any type: giống như js thuần

const anyValue1: any = 1231;
const anyValue2: any = '1231';

// Ngoài ra: never, unknown

const unknownVal: unknown = 'dddd';

// interface vs type

interface IUser {
  id: string;
  name: string;
  age: number;
}

type UserType = {
  id: string;
  name: string;
  age: number;
};

interface IBase {
  id: string;
}

interface IUser extends IBase {
  name: string;
  age: number;
  classes: number;
}

const user: IUser = {
  id: '1',
  name: 'Tinh Le',
  age: 27,
  classes: 2,
};

console.log(user);

// interface: tạo mới giống tên được, type không thể tạo mới giống tên.
// interface: có thể extends từ 1 interface khác

// Khi nào dùng interface, khi nào dùng type?
// Thực chất dùng cái nào cũng được
// Tốt hơn thì, những kiểu dữ liệu mà không cần mở rộng nhiều và dùng đến opp (extends, implements) thì dùng type và ngược lại

//Class

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

// Datatype Casting: ép kiểu

// arr3: có kiểu UnionValType[]
export const arr4  = [...arr3] as string[]

export default DataService;

