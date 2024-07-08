import { InferType, object, string } from 'yup';

export const addressSchema = object({
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
});

export type AddressSchemaType = InferType<typeof addressSchema>;
