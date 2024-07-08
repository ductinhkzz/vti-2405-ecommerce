import { IAddress } from './address.type';
import { IBase } from './common';

export interface ICustomer extends IBase {
  email: string;
  first_name: string;
  last_name: string;
  billing_address_id: string;
  phone: string;
  has_account: boolean;
  metadata?: Record<string, string>;
  billing_address?: IAddress;
  shipping_addresses?: IAddress[];
}

export type LoginRequestType = {
  email: string;
  password: string;
};

export type UpdateCustomerRequest = {
  first_name?: string;
  last_name?: string;
  email?: string;
  phone?: string;
  password?: string;
  billing_address?: Omit<IAddress, 'id' | 'created_at' | 'updated_at' | 'deleted_at'>;
};
