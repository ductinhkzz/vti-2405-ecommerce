import { Ref, forwardRef } from 'react';

import FormLabel from './FormLabel';
import FormInput, { FormInputProps } from './FormInput';

interface InputProps extends FormInputProps {
  label?: string;
}

const Input = forwardRef(({ label, className, ...props }: InputProps, ref: Ref<HTMLInputElement>) => {
  return (
    <div className={className}>
      {!!label && <FormLabel htmlFor={props.id}>{label}</FormLabel>}
      <FormInput ref={ref} {...props} />
    </div>
  );
});

export { Input };
