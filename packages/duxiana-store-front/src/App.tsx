import { Bounce, ToastContainer } from 'react-toastify';

import { AllRoutes } from './routes';

export default function App() {
  return (
    <>
      <AllRoutes />
      <ToastContainer
        position='top-right'
        autoClose={3000}
        hideProgressBar={false}
        newestOnTop={false}
        closeOnClick
        rtl={false}
        pauseOnFocusLoss
        draggable
        pauseOnHover
        theme='light'
        transition={Bounce}
      />
    </>
  );
}
