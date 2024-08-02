import { FormEventHandler, MouseEvent, ReactNode } from 'react';

import { Button } from '@/components';
import { Transition, TransitionChild } from '@headlessui/react';
import { useToggle } from '@/hooks';

type FormEditProps = {
  title: string;
  content?: ReactNode;
  description?: string;
  onSubmit?: FormEventHandler<HTMLFormElement>;
  children?: ReactNode;
  disabled?: boolean;
};

const FormEdit = ({ title, content, description, onSubmit, children, disabled }: FormEditProps) => {
  const [open, , onClose, toggle] = useToggle(false);

  const onClick = (e: MouseEvent<HTMLButtonElement>) => {
    e.preventDefault();
    toggle();
  };

  const handleSubmit: FormEventHandler<HTMLFormElement> = (e) => {
    onSubmit?.(e);
    onClose();
  };

  return (
    <form className='w-full overflow-visible' onSubmit={handleSubmit}>
      <div className='text-sm'>
        <div className='flex items-end justify-between'>
          <div className='flex flex-col'>
            <span className='uppercase text-ui-fg-base tracking-wide'>{title}</span>
            <div className='flex items-center flex-1 basis-0 justify-end gap-x-4'>
              {content && (
                <span className='font-semibold' data-testid='current-info'>
                  {content}
                </span>
              )}
              {description && <span>{description}</span>}
            </div>
          </div>
          <div>
            <Button color='secondary' size='sm' rounded onClick={onClick} className='w-16'>
              {open ? 'Cancel' : 'Edit'}
            </Button>
          </div>
        </div>
        <Transition show={open}>
          <TransitionChild>
            <div className='transition-[max-height,opacity] duration-200 ease-in-out overflow-visible max-h-[1000px] opacity-100'>
              {children}
              <div className='flex justify-end'>
                <Button type='submit' color='secondary' variant='contained' rounded disabled={disabled}>
                  Save changes
                </Button>
              </div>
            </div>
          </TransitionChild>
        </Transition>
      </div>
    </form>
  );
};

export { FormEdit };
