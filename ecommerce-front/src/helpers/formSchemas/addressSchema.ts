import { boolean, InferType, object, string } from 'yup';

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

export const shippingAddressSchema = object({
  email: string().email().required(),
}).concat(addressSchema);

export type ShippingAddressSchemaType = InferType<typeof shippingAddressSchema>;

export const checkoutAddressSchema = object({
  billingAddress: addressSchema.when('sameAsBilling', {
    is: true,
    then: (schema) =>
      schema
        .omit(['first_name', 'last_name', 'address_1', 'city', 'postal_code'])
        .concat(
          object({
            first_name: string().optional(),
            last_name: string().optional(),
            address_1: string().optional(),
            city: string().optional(),
            postal_code: string().optional(),
          }),
        )
        .optional(),
    otherwise: (schema) => schema.required(),
  }),
  shippingAddress: shippingAddressSchema.required(),
  sameAsBilling: boolean().optional(),
});

export type CheckoutAddressSchemaType = InferType<typeof checkoutAddressSchema>;
