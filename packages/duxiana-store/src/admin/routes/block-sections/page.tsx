import { RouteConfig } from '@medusajs/admin';
import { BarsThree } from "@medusajs/icons"

const BlockSections = () => {
  return (
    <div className='flex h-full grow flex-col'>
      <div className='flex w-full grow flex-col'>
        <div className='rounded-rounded bg-grey-0 border-grey-20 flex h-full w-full flex-col overflow-hidden border min-h-[350px]'>
          Block
        </div>
      </div>
    </div>
  );
};

export const config: RouteConfig = {
  link: {
    label: 'Block Sections',
    icon: BarsThree,
  },
};

export default BlockSections;
