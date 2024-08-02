import { HTMLAttributes, HTMLInputTypeAttribute, Ref, forwardRef } from 'react';
import { twMerge } from 'tailwind-merge';

export interface FormInputProps extends HTMLAttributes<HTMLInputElement> {
  type?: HTMLInputTypeAttribute;
  autoComplete?: string;
  required?: boolean;
}

const FormInput = forwardRef(({ className, ...props }: FormInputProps, ref: Ref<HTMLInputElement>) => {
  return (
    <input
      ref={ref}
      className={twMerge(
        'block w-full border border-gray-900 py-1.5 px-2 text-gray-900 shadow-sm placeholder:text-gray-400 sm:text-sm sm:leading-6',
        className,
      )}
      {...props}
    />
  );
});

export default FormInput;
