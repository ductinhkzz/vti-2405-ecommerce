import { MouseEvent, Ref, forwardRef } from 'react';
import { EyeIcon, EyeSlashIcon } from '@heroicons/react/24/outline';

import FormLabel from './FormLabel';
import FormInput, { FormInputProps } from './FormInput';
import { useToggle } from '@/hooks';

interface InputProps extends FormInputProps {
  label?: string;
  error?: string;
}

const Input = forwardRef(({ label, className, error, ...props }: InputProps, ref: Ref<HTMLInputElement>) => {
  const [open, , , toggle] = useToggle(false);
  const isPasswordType = props.type === 'password';

  const onClick = (e: MouseEvent<HTMLButtonElement>) => {
    e.preventDefault();
    toggle();
  };

  const _type = open ? 'text' : 'password';

  return (
    <div className={className}>
      {!!label && <FormLabel htmlFor={props.id}>{label}</FormLabel>}
      <div className='relative'>
        <FormInput ref={ref} {...props} type={isPasswordType ? _type : props.type} className='pr-6' />
        {isPasswordType && (
          <button className='absolute right-2 top-[50%] -translate-y-1/2 cursor-pointer' onClick={onClick}>
            {!open ? <EyeSlashIcon className='h-4 w-4' /> : <EyeIcon className='h-4 w-4' />}
          </button>
        )}
      </div>
      {!!error && <p className='text-xs text-red-500 mt-1'>{error}</p>}
    </div>
  );
});

export { Input };
