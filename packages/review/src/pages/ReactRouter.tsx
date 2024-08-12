import { Accordion } from '../components';

const ReactRouter = () => {
  return (
    <div className='mx-auto w-full divide-y divide-white/5 rounded-xl bg-white/5'>
      <div>React Router cho phép "client-side routing".</div>
      <ul className='list-disc ps-8 font-normal space-y-1'>
        <li>
          Trong các trang web truyền thống, trình duyệt yêu cầu dữ liệu từ máy chủ web, tải xuống và đánh giá các dữ
          liệu CSS và JavaScript, và HTML được gửi từ máy chủ. Khi người dùng nhấp vào liên kết, nó sẽ bắt đầu lại toàn
          bộ quá trình cho một trang mới.
        </li>
        <li>
          Định tuyến phía máy khách cho phép ứng dụng của bạn cập nhật URL từ một cú nhấp chuột vào liên kết mà không
          cần thực hiện yêu cầu khác cho một tài liệu khác từ máy chủ. Thay vào đó, ứng dụng của bạn có thể ngay lập tức
          hiển thị một số giao diện người dùng mới và thực hiện các yêu cầu dữ liệu với fetch để cập nhật trang bằng
          thông tin mới.
        </li>
        <li>
          Điều này cho phép trải nghiệm người dùng nhanh hơn vì trình duyệt không cần yêu cầu một tài liệu hoàn toàn mới
          hoặc đánh giá lại các dữ liệu CSS và JavaScript cho trang tiếp theo. Nó cũng cho phép trải nghiệm người dùng
          năng động hơn với những thứ như hoạt ảnh.
        </li>
      </ul>
      <Accordion
        title={
          <a
            className='font-semibold text-indigo-600'
            href='https://stackblitz.com/github/remix-run/react-router/tree/main/examples/basic?file=src%2FApp.tsx'
            target='__blank'
          >
            Basic Example
          </a>
        }
      >
        <iframe
          src='https://stackblitz.com/github/remix-run/react-router/tree/main/examples/basic?file=src%2FApp.tsx'
          style={{ width: '100%', height: 500, border: 0, borderRadius: 4, overflow: 'hidden' }}
          title='redux-fundamentals-example'
          allow='accelerometer; ambient-light-sensor; camera; encrypted-media; geolocation; gyroscope; hid; microphone; midi; payment; usb; vr; xr-spatial-tracking'
          sandbox='allow-forms allow-modals allow-popups allow-presentation allow-same-origin allow-scripts'
        />
      </Accordion>
      <Accordion
        title={
          <a
            className='font-semibold text-indigo-600'
            href='https://stackblitz.com/github/remix-run/react-router/tree/main/examples/auth-router-provider?file=src%2FApp.tsx'
            target='__blank'
          >
            Auth Router Provider
          </a>
        }
      >
        <iframe
          src='https://stackblitz.com/github/remix-run/react-router/tree/main/examples/auth-router-provider?file=src%2FApp.tsx'
          style={{ width: '100%', height: 500, border: 0, borderRadius: 4, overflow: 'hidden' }}
          title='redux-fundamentals-example'
          allow='accelerometer; ambient-light-sensor; camera; encrypted-media; geolocation; gyroscope; hid; microphone; midi; payment; usb; vr; xr-spatial-tracking'
          sandbox='allow-forms allow-modals allow-popups allow-presentation allow-same-origin allow-scripts'
        />
      </Accordion>
      <Accordion
        title={
          <a
            className='font-semibold text-indigo-600'
            href='https://stackblitz.com/github/remix-run/react-router/tree/main/examples/auth?file=src%2FApp.tsx'
            target='__blank'
          >
            Auth Example
          </a>
        }
      >
        <iframe
          src='https://stackblitz.com/github/remix-run/react-router/tree/main/examples/auth?file=src%2FApp.tsx'
          style={{ width: '100%', height: 500, border: 0, borderRadius: 4, overflow: 'hidden' }}
          title='redux-fundamentals-example'
          allow='accelerometer; ambient-light-sensor; camera; encrypted-media; geolocation; gyroscope; hid; microphone; midi; payment; usb; vr; xr-spatial-tracking'
          sandbox='allow-forms allow-modals allow-popups allow-presentation allow-same-origin allow-scripts'
        />
      </Accordion>
    </div>
  );
};

export default ReactRouter;
