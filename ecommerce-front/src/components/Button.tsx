import React from 'react';
import { twMerge } from 'tailwind-merge';

type ButtonVariant = 'outlined' | 'text' | 'contained';

type ButtonColor = 'primary' | 'secondary';

interface ButtonProps extends React.ButtonHTMLAttributes<HTMLButtonElement> {
  variant?: ButtonVariant;
  color?: ButtonColor;
}

const BaseButtonClass = 'relation transition-all delay-75 border';

const ButtonVariantClass: Record<ButtonVariant, string> = {
  outlined: 'border-solid bg-transparent px-4 py-2 text-sm hover:text-gray-900',
  text: 'bg-transparent px-4 py-2 text-sm hover:border hover:border-solid uppercase tracking-widest',
  contained: 'px-4 py-2 text-sm tracking-widest',
};

const ButtonColorClass: Record<ButtonColor, Record<ButtonVariant, string>> = {
  primary: {
    outlined: 'border-white text-white hover:bg-white hover:text-gray-900',
    text: 'border-transparent text-white hover:border-white',
    contained: 'contained'
  },
  secondary: {
    outlined: 'border-gray-900 text-gray-900 hover:bg-gray-900 hover:text-white disabled:text-gray-200 disabled:border-gray-200 disabled:bg-white',
    text: 'border-transparent text-gray-900 hover:border-gray-900',
    contained: 'text-white bg-gray-900 hover:bg-gray-800'
  },
};

const Button = ({ variant = 'outlined', color = 'primary', children, className, ...props }: ButtonProps) => {
  return (
    <button
      className={twMerge(BaseButtonClass, ButtonVariantClass[variant], ButtonColorClass[color][variant], className)}
      {...props}
    >
      {children}
    </button>
  );
};

export { Button };
