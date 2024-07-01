export interface ICustomer {
  id: string;
  email: string;
  first_name: string;
  last_name: string;
  billing_address_id: string;
  phoneL: string;
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
