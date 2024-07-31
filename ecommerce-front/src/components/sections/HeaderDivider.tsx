import { ThemeType } from '@/types';
import { ButtonVariant } from '../Button';
import { BlockActions } from './BlockActions';
import { Text } from '../Typography';

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
          {sub_title && (
            <Text uppercase size='xs' tracking='wider' className='mb-2'>
              {sub_title}
            </Text>
          )}
          {title && (
            <Text uppercase size='xl' tracking='wide' className='mb-4'>
              {title}
            </Text>
          )}
        </div>
        <div className='flex flex-col flex-auto lg:basis-3/5 basis-8/12 gap-8 2xl:ps-12 2xl:pe-24 items-start'>
          {description && (
            <Text size='xs'>
              {description}
            </Text>
          )}

          <BlockActions actions={actions} className='gap-4 sm:flex-row flex-col' />
        </div>
      </div>
    </div>
  );
};

export { HeaderDivider };
