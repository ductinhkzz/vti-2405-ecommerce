import React from 'react';
import { twMerge } from 'tailwind-merge';

export type ButtonVariant = 'outlined' | 'text' | 'contained';

type ButtonColor = 'primary' | 'secondary';

type ButtonSize = 'sm' | 'md';

export interface ButtonProps extends React.ButtonHTMLAttributes<HTMLButtonElement> {
  variant?: ButtonVariant;
  color?: ButtonColor;
  size?: ButtonSize;
  rounded?: boolean;
}

const BaseButtonClass = 'relation transition-all delay-75 border';

const ButtonSizeClass: Record<ButtonSize, string> = {
  sm: 'text-xs px-3 py-1.5',
  md: 'text-sm px-4 py-2',
};

const ButtonVariantClass: Record<ButtonVariant, string> = {
  outlined: 'border-solid bg-transparent hover:text-gray-900',
  text: 'bg-transparent hover:border hover:border-solid uppercase tracking-widest',
  contained: 'tracking-widest',
};

const ButtonColorClass: Record<ButtonColor, Record<ButtonVariant, string>> = {
  primary: {
    outlined: 'border-white text-white hover:bg-white hover:text-gray-900',
    text: 'border-transparent text-white hover:border-white',
    contained: 'contained',
  },
  secondary: {
    outlined:
      'border-gray-900 text-gray-900 hover:bg-gray-900 hover:text-white disabled:text-gray-200 disabled:border-gray-200 disabled:bg-white',
    text: 'border-transparent text-gray-900 hover:border-gray-900',
    contained: 'text-white bg-gray-900 hover:bg-gray-800',
  },
};

const Button = ({
  variant = 'outlined',
  color = 'primary',
  size = 'md',
  rounded = false,
  children,
  className,
  ...props
}: ButtonProps) => {
  const roundedClass: Record<ButtonSize, string> = {
    sm: 'rounded',
    md: 'rounded-md',
  };

  return (
    <button
      className={twMerge(
        BaseButtonClass,
        ButtonSizeClass[size],
        ButtonVariantClass[variant],
        ButtonColorClass[color][variant],
        rounded ? roundedClass[size] : '',
        className,
      )}
      {...props}>
      {children}
    </button>
  );
};

export { Button };
