import { BlockActions } from '@/components';
import { ActionType } from '@/types';

type ProductBannerProps = {
  title?: string;
  sub_title?: string;
  description?: string;
  image?: string;
  actions?: ActionType[];
};

const ProductBanner = ({ title, sub_title, description, image, actions }: ProductBannerProps) => {
  return (
    <div className='w-full grid grid-rows-1 grid-cols-1 text-white'>
      <div className='col-start-1 col-end-2 row-start-1 row-end-2'>
        <img src={image} alt='' className='h-full w-full brightness-75' />
      </div>
      <div className='col-start-1 col-end-2 row-start-1 row-end-2 justify-start z-10'>
        <div className='h-full justify-self-stretch xl:basis-3/5 xl:py-32 lg:py-24 md:py-20 py-4 px-32 flex flex-col gap-y-4 justify-center items-center'>
          {sub_title && <p className='tracking-widest uppercase text-xs'>{sub_title}</p>}
          {title && <h2 className='tracking-wide text-3xl uppercase'>{title}</h2>}
          {description && <p className='text-xs mb-8 text-center max-w-72'>{description}</p>}
          <BlockActions actions={actions} />
        </div>
      </div>
    </div>
  );
};

export { ProductBanner };
