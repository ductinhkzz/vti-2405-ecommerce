import { object, string, ref } from 'yup';

export const accountSchema = object({
  first_name: string().required(),
  last_name: string().required(),
  email: string().email().required(),
  phone: string().required(),
  old_password: string(),
  new_password: string(),
  password: string().oneOf([ref('new_password')], 'Password must match'),
  billing_address: object({
    first_name: string().required(),
    last_name: string().required(),
    city: string().required(),
    address_1: string().required(),
    address_2: string().optional(),
    company: string().optional(),
    phone: string().optional(),
    country_code: string().optional(),
    province: string().optional(),
    postal_code: string().required(),
  }).optional(),
});
