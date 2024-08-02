import { ButtonVariant } from '@/components';

export type OptionType<T extends string | number = string> = {
  label: string;
  value: T;
};

export type ActionType = {
  url: string;
  text: string;
  variant?: ButtonVariant;
  arrowIcon?: boolean;
  color?: 'primary' | 'secondary';
};

export type ThemeType = 'gray' | 'warm-gray' | 'white' | 'black' | 'cool-gray';
