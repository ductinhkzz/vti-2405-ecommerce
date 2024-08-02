import clsx from 'clsx';
import React from 'react';

type ContactCardProps = {
  img: string;
  title: string;
  subTitle: string;
  type: string;
  contents?: string[];
  links?: Array<{ title?: string; text: string; url?: string }>;
};

const ContactCard = ({ img, title, type, subTitle, contents = [], links = [] }: ContactCardProps) => {
  return (
    <div className='keen-slider__slide sm:p-2'>
      <div className='group/item hover:bg-gray-200 w-full'>
        <div className='w-full'>
          <img src={img} alt='' className='w-screen sm:w-auto' />
        </div>
        <div className='p-4 flex flex-col justify-start items-start'>
          <h4>{type}</h4>
          <p className='text-xs tracking-widest	mb-2'>{subTitle}</p>
          <h3 className='uppercase font-medium tracking-wide text-md mb-4'>{title}</h3>
          {contents.length > 0 && (
            <p className='text-xs font-thin tracking-wide leading-4'>
              {contents.map((content) => (
                <React.Fragment key={content}>
                  {content} <br />
                </React.Fragment>
              ))}
            </p>
          )}
          {links.map((link) => (
            <p key={link.text} className={clsx('text-xs font-light', link.title ? 'mb-2' : 'mb-1')}>
              {link.title}
              {link.title && <br />}
              <a href={link.url} className='text-stone-500	 hover:underline hover:underline-offset-4'>
                {link.text}
              </a>
            </p>
          ))}
        </div>
      </div>
    </div>
  );
};

export default ContactCard;
