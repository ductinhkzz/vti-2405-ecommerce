import { InferType, object, string } from 'yup';

export const loginSchema = object({
  email: string().email().required(),
  password: string().min(3).required(),
});

export type LoginSchemaType = InferType<typeof loginSchema>;
