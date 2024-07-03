import { NavLink } from 'react-router-dom';

import { ACCOUNT_NAVIGATIONS } from '@/constants';

const Sidebar = () => {
  return (
    <div>
      <div className='pb-4'>
        <h3 className='font-semibold'>Account</h3>
      </div>
      <div className='font-normal'>
        <ul className='flex mb-0 justify-start items-start flex-col gap-y-4'>
          {ACCOUNT_NAVIGATIONS.map((item) => (
            <li key={item.name}>
              <NavLink to={item.href}>{item.name}</NavLink>
            </li>
          ))}
        </ul>
      </div>
    </div>
  );
};

export default Sidebar;
