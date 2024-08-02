import { twMerge } from 'tailwind-merge';

const Divider = ({ className }: { className?: string }) => (
  <div className={twMerge('h-px w-full border-b border-gray-200 mt-1', className)} />
);

export { Divider };
