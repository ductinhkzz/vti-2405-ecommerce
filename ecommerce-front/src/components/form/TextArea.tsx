import { HTMLAttributes, Ref, forwardRef } from 'react';

import FormLabel from './FormLabel';

export interface TextAreaProps extends HTMLAttributes<HTMLTextAreaElement> {
  autoComplete?: string;
  required?: boolean;
  label?: string;
  rows?: number;
}

const TextArea = forwardRef(
  ({ className, label, required, ...props }: TextAreaProps, ref: Ref<HTMLTextAreaElement>) => {
    return (
      <div className={className}>
        {!!label && (
          <FormLabel htmlFor={props.id}>
            {label}
            &nbsp;{required && <span className='text-red-500'>*</span>}
          </FormLabel>
        )}
        <textarea
          ref={ref}
          required={required}
          className='block w-full border border-gray-900 py-1.5 px-2 text-gray-900 shadow-sm placeholder:text-gray-400 sm:text-sm sm:leading-6'
          {...props}
        />
      </div>
    );
  },
);

export { TextArea };
