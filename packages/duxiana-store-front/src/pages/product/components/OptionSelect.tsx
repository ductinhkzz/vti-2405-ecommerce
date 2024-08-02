import React from 'react';
import clsx from 'clsx';

import { IProductOption } from '@/redux/types';
import { onlyUnique } from '@/utils';

type OptionSelectProps = {
  option: IProductOption;
  current: string;
  updateOption: (option: Record<string, string>) => void;
  title: string;
  disabled: boolean;
};

const OptionSelect: React.FC<OptionSelectProps> = ({ option, current, updateOption, title, disabled }) => {
  const filteredOptions = option.values.map((v) => v.value).filter(onlyUnique);

  return (
    <div className='flex flex-col gap-y-3'>
      <span className='text-sm'>Select {title}</span>
      <div className='flex flex-wrap justify-between gap-2'>
        {filteredOptions.map((v) => {
          return (
            <button
              onClick={() => updateOption({ [option.id]: v })}
              key={v}
              className={clsx(
                'border text-small-regular h-10 rounded-rounded p-2 flex-1 ',
                {
                  'border-blue-400': v === current,
                  'hover:shadow-elevation-card-rest transition-shadow ease-in-out duration-150': v !== current,
                },
              )}
              disabled={disabled}
              data-testid='option-button'>
              {v}
            </button>
          );
        })}
      </div>
    </div>
  );
};

export default OptionSelect;
