import { Accordion } from '../components';

const ReduxPage = () => {
  return (
    <div className='mx-auto w-full divide-y divide-white/5 rounded-xl bg-white/5'>
      <Accordion title='What is redux?'>
        <ul className='list-disc ps-8 font-normal space-y-1'>
          <li>Redux là một thư viện JS để quản lý trạng thái toàn cục (global) có thể dự đoán và bảo trì được.</li>
          <li>
            Nó giúp bạn viết các ứng dụng hoạt động nhất quán, chạy trong các môi trường khác nhau (client, server,
            native) và dễ kiểm tra. Trên hết, nó cung cấp trải nghiệm tuyệt vời cho nhà phát triển, chẳng hạn như chỉnh
            sửa mã trực tiếp kết hợp với trình gỡ lỗi liên tục theo thời gian.
          </li>
          <li>
            Bạn có thể sử dụng Redux cùng với React hoặc với bất kỳ thư viện xem nào khác. Nó rất nhỏ (2kB, bao gồm cả
            các phụ thuộc), nhưng có một hệ sinh thái tiện ích bổ sung lớn.
          </li>
          <li>
            Redux Toolkit là phương pháp tiếp cận chính thức được đề xuất để viết logic Redux. Nó bao quanh Redux core
            và chứa các gói và chức năng cần thiết để xây dựng ứng dụng Redux. Redux Toolkit xây dựng trong các phương
            pháp hay nhất được được đội ngũ Redux đề xuất, đơn giản hóa hầu hết các tác vụ Redux, ngăn ngừa các lỗi
            thường gặp và giúp viết các ứng dụng Redux dễ dàng hơn.
          </li>
          <li>
            RTK bao gồm các tiện ích giúp đơn giản hóa nhiều trường hợp sử dụng phổ biến, bao gồm thiết lập store, tạo
            reduces và viết logic cập nhật không thay đổi (immutable), thậm chí tạo toàn bộ "slices" trạng thái cùng một
            lúc.
          </li>
        </ul>
      </Accordion>
      <Accordion title='Components/ Function'>
        <ul className='list-disc ps-8 font-normal space-y-1'>
          <li>
            <Accordion title='Store' defaultOpen>
              Store là một đối tượng lưu trữ cây trạng thái (tree) của ứng dụng. Chỉ nên có một store duy nhất trong ứng
              dụng Redux vì quá trình hợp thành diễn ra ở cấp độ reducer.
            </Accordion>
          </li>
          <li>
            <Accordion title='Actions' defaultOpen>
              Action là một đối tượng đơn giản biểu thị ý định thay đổi trạng thái. Actions là cách duy nhất để đưa dữ
              liệu vào kho lưu trữ (store). Bất kỳ dữ liệu nào, cho dù từ sự kiện UI, lệnh gọi lại mạng hay các nguồn
              khác như WebSockets cuối cùng đều cần được phân phối (dispatch) dưới dạng actions.
            </Accordion>
          </li>
          <li>
            <Accordion title='Reducer' defaultOpen>
              Reducer là một hàm chấp nhận tích lũy và giá trị và trả về tích lũy mới. Chúng được sử dụng để giảm một
              tập hợp các giá trị xuống còn một giá trị duy nhất. (Ý nghĩa giống như reduce method trong array) <br />
              Nó là nơi tiếp nhận action và thay đổi trạng thái (State) trong store nếu cần
            </Accordion>
          </li>
          <li>
            <Accordion title='Action Creator' defaultOpen>
              Nói một cách đơn giản, là một hàm tạo ra một action. Đừng nhầm lẫn hai thuật ngữ này—một lần nữa, action
              là một tải trọng (payload) thông tin và action creator là một nhà máy tạo ra một action.
            </Accordion>
          </li>
          <li>
            <Accordion title='Selector' defaultOpen>
              Lấy data từ Global State trong Store
            </Accordion>
          </li>
          <li>
            <Accordion title='Flow' defaultOpen>
              <img
                src='https://redux.js.org/assets/images/ReduxDataFlowDiagram-49fa8c3968371d9ef6f2a1486bd40a26.gif'
                alt='flow'
              />
            </Accordion>
            <Accordion title='Initial setup'>
              <ol className='list-disc ps-8 font-normal space-y-1'>
                <li>Một store Redux được tạo bằng root reducer function</li>
                <li>
                  Store gọi hàm root reducer một lần và lưu giá trị trả về dưới dạng trạng thái ban đầu (initial state)
                </li>
                <li>
                  Khi UI được hiển thị lần đầu, các thành phần UI sẽ truy cập trạng thái (state) hiện tại của kho Redux
                  và sử dụng dữ liệu đó để render nội dung cần hiển thị. Chúng cũng đăng ký (subscribe) bất kỳ bản cập
                  nhật store nào trong tương lai để biết trạng thái đã thay đổi hay chưa.
                </li>
              </ol>
            </Accordion>
            <Accordion title='Update'>
              <ol className='list-disc ps-8 font-normal space-y-1'>
                <li>Một sự kiện nào đó xảy ra trong ứng dụng, chẳng hạn như người dùng nhấp vào nút (click button)</li>
                <li>Mã ứng dụng sẽ gửi một action đến store Redux, như dispatch {`({type: 'counter/incremented'})`}</li>
                <li>
                  Kho chạy lại reducer với trạng thái trước đó và action hiện tại, rồi lưu giá trị trả về dưới dạng
                  trạng thái mới
                </li>
                <li>
                  Store thông báo cho tất cả các components của UI đã đăng ký (subscribe) rằng Store đã được cập nhật
                </li>
                <li>
                  Mỗi componentsUI cần dữ liệu từ store sẽ kiểm tra xem các của trạng thái mà chúng cần có đã thay đổi
                  hay chưa.
                </li>
                <li>
                  Mỗi components thấy dữ liệu của mình đã thay đổi sẽ buộc phải hiển thị lại (re-render) bằng dữ liệu
                  mới để có thể cập nhật những gì hiển thị trên màn hình
                </li>
              </ol>
            </Accordion>
          </li>
          <li>
            <Accordion title='Example Project setup'>
              <iframe
                src='https://codesandbox.io/embed/udcf6?view=editor+%2B+preview'
                style={{ width: '100%', height: 500, border: 0, borderRadius: 4, overflow: 'hidden' }}
                title='redux-fundamentals-example'
                allow='accelerometer; ambient-light-sensor; camera; encrypted-media; geolocation; gyroscope; hid; microphone; midi; payment; usb; vr; xr-spatial-tracking'
                sandbox='allow-forms allow-modals allow-popups allow-presentation allow-same-origin allow-scripts'
              />
            </Accordion>
            <Accordion title='Example: counter'>
              <iframe
                className='codesandbox'
                style={{ width: '100%', height: 500, border: 0, borderRadius: 4, overflow: 'hidden' }}
                src='https://codesandbox.io/embed/github/reduxjs/redux-essentials-counter-example/tree/master/?fontsize=14&hidenavigation=1&module=%2Fsrc%2Ffeatures%2Fcounter%2FcounterSlice.js&theme=dark&runonclick=1'
                title='redux-essentials-example'
                allow='geolocation; microphone; camera; midi; vr; accelerometer; gyroscope; payment; ambient-light-sensor; encrypted-media; usb'
                sandbox='allow-modals allow-forms allow-popups allow-scripts allow-same-origin'
              ></iframe>
            </Accordion>
          </li>
          <li>
            <Accordion title='Middleware'>
              <p>Được sử dụng vào các mục đích như:</p>
              <ol className='list-disc ps-8 font-normal space-y-1'>
                <li>Tạo side effects for actions,</li>
                <li>modify or cancel actions</li>
                <li>modify the input accepted by dispatch</li>
              </ol>
              <p>
                Hầu hết các trường hợp sử dụng thì thuộc loại đầu tiên: Redux-saga, redux-observable, RTK listener
                middleware, redux-thunk
              </p>
              <p>
                Bên trong redux toolkit đã sử dụng sẵn redux-thunk nên khi sử dụng chúng ta không cần cài đặt thêm nếu
                call API thì sử dụng redux toolkit query
              </p>
              <p>
                Trên offical document của redux, react-redux thì cũng recommend sử dụng redux-toolkit
              </p>
            </Accordion>
          </li>
        </ul>
      </Accordion>
    </div>
  );
};

export default ReduxPage;
