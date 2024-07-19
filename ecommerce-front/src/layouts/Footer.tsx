import { LogoIcon, FacebookIcon, InstagramIcon, YoutubeIcon } from '@/components';
import { useGetProductCollectionsQuery, useGetProductCategoriesQuery } from '@/redux/api';
import { parseMetadata } from '@/utils';
import { NavLink } from 'react-router-dom';

const Footer = () => {
  const { data = [] } = useGetProductCollectionsQuery();
  const { data: productCategories = [] } = useGetProductCategoriesQuery();
  const collections = data
    .map((collection) => {
      const categories = productCategories.filter((category) => category.metadata.collection === collection.handle);

      return {
        ...collection,
        categories,
        metadata: parseMetadata(collection.metadata),
      };
    })
    .sort((a, b) => a.title.localeCompare(b.title));

  return (
    <footer className='flex justify-center bg-black'>
      <div className='container sm:w-xl w-full p-12 text-neutral-400 fill-neutral-400'>
        <div className='flex flex-col gap-y-4 px-4'>
          <div>
            <LogoIcon className='h-6 w-auto' />
          </div>
          <p className='text-sm'>Innovationg comfort since 1926</p>
          <div className='flex gap-x-3'>
            <a href='https://www.facebook.com/' target='__blank' title='Facebook'>
              <FacebookIcon className='w-6' />
            </a>
            <a href='https://www.instagram.com/' target='__blank' title='Instagram'>
              <InstagramIcon className='w-6' />
            </a>
            <a href='https://www.youtube.com/' target='__blank' title='Youtube'>
              <YoutubeIcon className='w-6' />
            </a>
          </div>
        </div>
        <ul className='flex mt-8 flex-wrap w-full'>
          {collections.map((collection) => (
            <li key={collection.id} className='basis-1/4 max-w-1/4 p-4'>
              <NavLink
                to={`collection/${collection.id}`}
                className='text-md font-semibold text-primary-yellow tracking-widest'>
                {collection.title}
              </NavLink>
              <div className='w-full h-[0.5px] bg-divider-color my-4' />
              <ol>
                {collection.categories.map((category) => (
                  <li key={category.id} className='mb-2'>
                    <NavLink
                      to={`${collection.handle}/${category.handle}`}
                      className='text-xs uppercase tracking-widest'>
                      {category.name}
                    </NavLink>
                  </li>
                ))}
              </ol>
            </li>
          ))}
          <li className='basis-1/4 max-w-1/4 p-4'>
            <NavLink to='why-dux' className='text-md font-semibold text-primary-yellow tracking-widest'>
              Why DUX
            </NavLink>
            <div className='w-full h-[0.5px] bg-divider-color my-4' />
            <ol>
              <li className='mb-2'>
                <NavLink to='why-dux/innovation' className='text-xs uppercase tracking-widest'>
                  Innovation
                </NavLink>
              </li>
              <li className='mb-2'>
                <NavLink to='why-dux/innovation' className='text-xs uppercase tracking-widest'>
                  Sleep science
                </NavLink>
              </li>
            </ol>
          </li>
          <li className='basis-1/4 max-w-1/4 p-4'>
            <NavLink to='about-us' className='text-md font-semibold text-primary-yellow tracking-widest'>
              About us
            </NavLink>
            <div className='w-full h-[0.5px] bg-divider-color my-4' />
            <ol>
              <li className='mb-2'>
                <NavLink to='about-us/contact-us' className='text-xs uppercase tracking-widest'>
                  Contact us
                </NavLink>
              </li>
              <li className='mb-2'>
                <NavLink to='about-us/terms-of-use' className='text-xs uppercase tracking-widest'>
                  Terms of Use
                </NavLink>
              </li>
              <li className='mb-2'>
                <NavLink to='about-us/privacy-policy' className='text-xs uppercase tracking-widest'>
                  Privacy Policy
                </NavLink>
              </li>
            </ol>
          </li>
        </ul>
        <div className='mx-4 pt-6 pb-1 border-t border-divider-color'>© 2020 Duxian, Inc. All rights reserved.</div>
      </div>
    </footer>
  );
};

export default Footer;
