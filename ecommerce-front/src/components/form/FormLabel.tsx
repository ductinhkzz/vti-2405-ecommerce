import { HTMLAttributes } from 'react';
import { twMerge } from 'tailwind-merge';

interface FormLabelProps extends HTMLAttributes<HTMLLabelElement> {
  htmlFor?: string;
}

const FormLabel = ({ className, children, ...props }: FormLabelProps) => {
  return (
    <label className={twMerge('block text-sm font-medium leading-6 text-gray-900', className)} {...props}>
      {children}
    </label>
  );
};

export default FormLabel;
