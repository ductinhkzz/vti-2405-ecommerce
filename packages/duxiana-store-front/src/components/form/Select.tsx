import { forwardRef, Ref } from 'react';

import { OptionType } from '@/types';
import FormLabel from './FormLabel';
import FormSelect, { FormSelectProps } from './FormSelect';

interface SelectProps<T extends string | number = string> extends FormSelectProps {
  label?: string;
  error?: string;
  options?: OptionType<T>[];
}

const Select = forwardRef(function SelectComponent<T extends string | number = string>(
  { className, label, error, options = [], ...props }: SelectProps<T>,
  ref: Ref<HTMLSelectElement>,
) {
  return (
    <div className={className}>
      {!!label && <FormLabel htmlFor={props.id}>{label}</FormLabel>}
      <FormSelect ref={ref} {...props}>
        {options.map((option) => (
          <option value={option.value} key={option.value}>
            {option.label}
          </option>
        ))}
      </FormSelect>
      {!!error && <p className='text-xs text-red-500 mt-1'>{error}</p>}
    </div>
  );
});

export { Select };
