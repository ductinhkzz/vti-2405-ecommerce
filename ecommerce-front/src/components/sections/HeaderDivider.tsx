import { Button } from '../Button';

const HeaderDivider = () => {
  return (
    <div className='flex justify-center my-16 md:my-24'>
      <div className='container w-xl flex 2xl:px-24 sm:px-8 px-4 md:flex-row flex-col gap-y-8'>
        <div className='flex-auto lg:basis-2/5 basis-4/12'>
          <h2 className='text-3xl'>Next-Level Comfort</h2>
        </div>
        <div className='flex flex-col flex-auto lg:basis-3/5 basis-8/12 gap-8 2xl:ps-12 2xl:pe-24'>
          <p className='sm:text-sm text-xs font-light'>
            Enjoying the comfort of your bed is the ultimate luxury. Our goal is to provide you with the best possible
            experience of rest. We achieve this through innovation. DUX technology enables the highest quality sleep,
            supporting your well-being, and ensuring back pains relief.
          </p>
          <p className='flex gap-4 sm:flex-row flex-col'>
            <Button color='secondary'>Discover the DUX advantages</Button>
            <Button color='secondary' variant='text'>
              Try it yourself <span aria-hidden='true'>→</span>
            </Button>
          </p>
        </div>
      </div>
    </div>
  );
};

export { HeaderDivider };
