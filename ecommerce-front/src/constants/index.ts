import React from 'react';
import { CreditCardIcon } from '@heroicons/react/24/outline';

export const NAVIGATIONS = [
  { name: 'Product', href: '/product' },
  { name: 'Features', href: '#' },
  { name: 'Marketplace', href: '#' },
  { name: 'Company', href: '#' },
];

export const BREAK_POINTS = {
  '2xl': 1536,
  xl: 1280,
  lg: 1024,
  md: 768,
  sm: 640,
};

export const ACCOUNT_NAVIGATIONS = [
  { name: 'Overview', href: '/account/overview' },
  { name: 'Profile', href: '/account/profile' },
  { name: 'Addresses', href: '/account/addresses' },
  { name: 'Orders', href: '/account/orders' },
  { name: 'Log out', href: '/account/logout' },
];

export const PAYMENT_INFO_MAP: Record<
  string,
  {
    title: string;
    icon: React.ForwardRefExoticComponent<
      React.PropsWithoutRef<React.SVGProps<SVGSVGElement>> & {
        title?: string;
        titleId?: string;
      } & React.RefAttributes<SVGSVGElement>
    >;
  }
> = {
  manual: {
    title: 'Test payment',
    icon: CreditCardIcon,
  },
};
