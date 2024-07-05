import { IBase } from './common';

export interface IBillingAddress extends IBase {
  first_name: string;
  last_name: string;
  company?: string;
  phone?: string;
  address_1: string;
  address_2?: string;
  city: string;
  country_code?: string;
  province?: string;
  postal_code: string;
}

export interface IShippingAddress extends IBase {
  first_name: string;
  last_name: string;
}
