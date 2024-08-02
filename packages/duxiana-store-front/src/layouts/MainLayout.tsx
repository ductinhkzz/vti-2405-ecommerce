import { Outlet } from 'react-router-dom';

import Header from './Header';
import Footer from './Footer';

const MainLayout = () => {
  return (
    <div className='bg-white'>
      <Header />
      <div className='relative isolate pt-[4.5rem]'>
        <Outlet />
      </div>
      <Footer />
    </div>
  );
};

export { MainLayout };
