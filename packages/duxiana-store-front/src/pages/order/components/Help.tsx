import { NavLink } from 'react-router-dom';

const Help = () => {
  return (
    <div className='mt-4'>
      <h1 className='text-base-semi'>Need help?</h1>
      <div className='text-base-regular my-2'>
        <ul className='gap-y-2 flex flex-col'>
          <li>
            <NavLink to='/contact'>Contact</NavLink>
          </li>
          <li>
            <NavLink to='/contact'>Returns & Exchanges</NavLink>
          </li>
        </ul>
      </div>
    </div>
  );
};

export { Help };
