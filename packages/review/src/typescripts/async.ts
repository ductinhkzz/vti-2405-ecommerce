// Callback
// 1function truyền như 1 parameter qua 1 function

const callback1 = () => {
  console.log('=============callback1===============');
};
const callback2 = (callback: () => void) => {
  console.log('=============callback2===============');
  callback();
};

callback2(callback1);

//Callback hell là gọi nhiều callback lồng vào nhau
// => Khó debug, bad code
// => Dùng Promise / Async/Await

const promise = (x: number) => {
  return new Promise<number>((resolve, reject) => {
    if (x > 5) resolve(x);
    else reject(new Error('Invalid'));
  });
};

// promise(4)
//   .then((value) => {
//     console.log(value); // Không vào
//   })
//   .catch((error) => {
//     console.log(error); // Error: Invalid
//   });

promise(6)
  .then((value) => {
    console.log(value); // 6
  })
  .catch((error) => {
    console.log(error); // Không vào
  });

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

//Async/await

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
// promiseCall();

//

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

const callAsync = async () => {
  const starttime = new Date().getTime()
  console.log(await func1());
  console.log(await func2());
  console.log(await func3());
  console.log(new Date().getTime() - starttime)
};

callAsync(); // sau 5s sẽ hiện func1, tiếp đến sau 3 s sẽ hiện func2, cuối cùng sau 4s sẽ hiện func3

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
//Promise.all : thực thi và trả kết quả nếu ko có lỗi
// Ngoài ra Promise.race: thực thi và kết quả ko lỗi và chỉ trả về 1 kết quả  của promise thực thi nhanh nhất
//Promise.any: thì nó sẽ thực thi và trả kết quả kể cả lỗi