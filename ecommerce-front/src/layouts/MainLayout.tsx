import { Outlet } from 'react-router-dom';

import Header from './Header';

const MainLayout = () => {
  return (
    <div className='bg-white'>
      <Header />
      <div className='relative isolate pt-[4.5rem]'>
        <Outlet />
      </div>
    </div>
  );
};

export { MainLayout };
