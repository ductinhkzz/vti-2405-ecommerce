import { Button } from '../Button';

interface HeroSectionProps {
  url: string;
  isVideo?: boolean;
  btnText?: string;
  description?: string;
  title?: string;
  subTitle?: string;
}

const HeroSection = ({ url, isVideo = false, btnText, description, title, subTitle }: HeroSectionProps) => {
  return (
    <div className='w-full grid grid-cols-1 grid-rows-1'>
      <div className='col-start-1 col-end-2 row-start-1 row-end-2'>
        {isVideo && <video src={url} autoPlay muted loop className='w-full h-full' />}
        {!isVideo && <img src={url} alt='' className='w-full' />}
      </div>
      <div className='col-start-1 col-end-2 row-start-1 row-end-2 justify-start z-10 flex'>
        <div className='h-full xl:basis-3/5 2xl:p-52 xl:p-32 lg:p-24 md:p-20 p-4 flex flex-col gap-y-4 justify-center items-center sm:items-start'>
          <p className='text-white tracking-widest uppercase text-xs'>{subTitle}</p>
          <h2 className='text-white tracking-wide text-3xl uppercase'>{title}</h2>
          <p className='text-white text-xs mb-8 text-center sm:text-start'>{description}</p>
          <p>
            <Button variant='outlined' className='text-xs'>{btnText}</Button>
          </p>
        </div>
      </div>
    </div>
  );
};

export { HeroSection };
