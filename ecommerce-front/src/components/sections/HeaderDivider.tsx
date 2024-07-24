import { ThemeType } from '@/types';
import { ButtonVariant } from '../Button';
import { BlockActions } from './BlockActions';

export type HeaderDividerProps = {
  sub_title?: string;
  title?: string;
  description?: string;
  theme?: ThemeType;
  actions?: Array<{ url: string; text: string; variant?: ButtonVariant }>;
};

const HeaderDivider = ({ title, sub_title, description, actions = [], theme = 'white' }: HeaderDividerProps) => {
  return (
    <div className={`flex justify-center items-center theme-${theme}`}>
      <div className='container w-xl flex 2xl:px-24 sm:px-8 px-4 md:flex-row flex-col gap-y-8 items-start my-16 md:my-24'>
        <div className='flex-auto lg:basis-2/5 basis-4/12 px-4'>
          {sub_title && <p className='mb-2 uppercase text-xs tracking-widest'>{sub_title}</p>}
          {title && <h2 className='text-3xl uppercase tracking-wide'>{title}</h2>}
        </div>
        <div className='flex flex-col flex-auto lg:basis-3/5 basis-8/12 gap-8 2xl:ps-12 2xl:pe-24 items-start'>
          <p className='sm:text-sm text-xs font-light'>{description}</p>
          <BlockActions actions={actions} className='gap-4 sm:flex-row flex-col' />
        </div>
      </div>
    </div>
  );
};

export { HeaderDivider };
