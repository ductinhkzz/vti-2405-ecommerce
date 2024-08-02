import { Button, Input, TextArea } from '@/components';

import contactImg from '@/assets/images/contact-us/contact-image.webp';

const ContactForm = () => {
  return (
    <div className='w-full grid grid-cols-1 grid-rows-2 md:grid-cols-2 md:grid-rows-1'>
      <div className='col-start-1 col-end-2 row-start-1 row-end-2'>
        <img src={contactImg} alt='' className='w-full md:w-auto md:h-full' />
      </div>
      <div className='col-start-1 col-end-2 row-start-2 row-end-3 md:col-start-2 md:col-end-3 md:row-start-1 md:row-end-2 flex justify-center items-center bg-orange-50'>
        <form className='p-12 min-w-full lg:min-w-80 md:p-4 flex flex-col gap-y-2'>
          <Input label='Name' required />
          <Input label='Email' required />
          <Input label='Address' required />
          <Input label='Phone' required />
          <TextArea label='Message' rows={3} required />
          <div className='flex justify-end mt-2'>
            <Button color='secondary' size='sm'>
              Send
            </Button>
          </div>
        </form>
      </div>
    </div>
  );
};

export { ContactForm };
