import { Outlet } from 'react-router-dom';
import { NAV_ITEMS } from '../constants';

const MainLayout = () => {
  return (
    <div className='min-h-full'>
      <nav className='bg-gray-800'>
        <div className='mx-auto max-w-7xl px-4 sm:px-6 lg:px-8'>
          <div className='flex h-16 items-center justify-between'>
            <div className='flex items-center'>
              <div className='hidden md:block'>
                <div className='ml-10 flex items-baseline space-x-4'>
                  {NAV_ITEMS.map((item) => (
                    <a
                      key={item.id}
                      href={item.url}
                      className='rounded-md px-3 py-2 text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white'
                    >
                      {item.name}
                    </a>
                  ))}
                </div>
              </div>
            </div>
          </div>
        </div>
      </nav>
      <main>
        <div className='mx-auto max-w-7xl px-4 py-6 sm:px-6 lg:px-8'>
          <Outlet />
        </div>
      </main>
    </div>
  );
};

export { MainLayout };
