import { HTMLAttributes, Ref, forwardRef } from 'react';
import { twMerge } from 'tailwind-merge';

export interface FormSelectProps extends HTMLAttributes<HTMLSelectElement> {
  required?: boolean;
}

const FormSelect = forwardRef(({ className, ...props }: FormSelectProps, ref: Ref<HTMLSelectElement>) => {
  return (
    <select
      ref={ref}
      className={twMerge(
        'block w-full border border-gray-900 py-1.5 px-2 text-gray-900 shadow-sm placeholder:text-gray-400 sm:text-sm sm:leading-6',
        className,
      )}
      {...props}
    />
  );
});

export default FormSelect;
