import React from 'react';
import { twMerge } from 'tailwind-merge';

interface IconButtonProps extends React.ButtonHTMLAttributes<HTMLButtonElement> {}

const IconButton = ({ children, className, ...props }: IconButtonProps) => {
  return (
    <button className={twMerge('flex items-center gap-x-1 text-xs py-0.5 px-1 border rounded border-gray-900 hover:opacity-75', className)} {...props}>
      {children}
    </button>
  );
};

export { IconButton };
