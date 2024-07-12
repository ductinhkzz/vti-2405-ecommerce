import { NavLink } from 'react-router-dom';
import { ArrowRightCircleIcon } from '@heroicons/react/24/outline'

import { Button } from '../Button';

type CardListBlockProps = {
  img: string;
  subTitle: string;
  title: string;
  description: string;
  action: {
    text: string;
    url: string;
  };
};

const CardListBlock = ({ img, title, subTitle, description, action }: CardListBlockProps) => {
  return (
    <div className='flex justify-center items-center my-24'>
      <div className='container sm:w-xl w-full block px-24'>
        <NavLink to={action.url} className='grid grid-cols-12 group/item hover:bg-gray-200'>
          <div className='col-start-5 col-end-13'>
            <img src={img} alt='' />
          </div>
          <div className='col-start-1 col-end-5 row-start-1 flex flex-col justify-center p-8'>
            <p className='text-xs uppercase tracking-widest font-normal mb-1'>{subTitle}</p>
            <h3 className='uppercase text-sm font-medium tracking-widest mb-2'>{title}</h3>
            <p className='text-xs font-extralight tracking-wider mb-8'>{description}</p>
            <p>
              <Button color='secondary' variant='text' className='pl-0 hover:pl-3 font-medium flex items-center gap-x-1' size='sm'>
                {action.text}
                <ArrowRightCircleIcon className='w-4 h-4' />
              </Button>
            </p>
          </div>
        </NavLink>
      </div>
    </div>
  );
};

export { CardListBlock };
