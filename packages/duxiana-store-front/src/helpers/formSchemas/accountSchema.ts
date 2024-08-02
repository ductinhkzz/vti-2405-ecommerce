import { object, string, ref } from 'yup';

import { addressSchema } from './addressSchema';

export const accountSchema = object({
  first_name: string().required(),
  last_name: string().required(),
  email: string().email().required(),
  phone: string().required(),
  old_password: string(),
  new_password: string(),
  password: string().oneOf([ref('new_password')], 'Password must match'),
  billing_address: addressSchema.optional(),
});
