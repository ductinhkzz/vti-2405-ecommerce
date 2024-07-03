export interface ICustomer {
  id: string;
  email: string;
  first_name: string;
  last_name: string;
  billing_address_id: string;
  phone: string;
  has_account: boolean;
  created_at: Date;
  updated_at: Date;
  deleted_at: Date;
  metadata?: Record<string, string>;
}

export type LoginRequestType = {
  email: string;
  password: string;
};

export type UpdateCustomerRequest = {
  first_name: string;
  last_name: string;
  email: string;
  phone: string;
};
