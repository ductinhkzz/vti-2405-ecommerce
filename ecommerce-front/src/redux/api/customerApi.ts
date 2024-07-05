import { ICustomer, UpdateCustomerRequest } from '../types';
import { api } from './baseApi';

export const customerApi = api.injectEndpoints({
  endpoints: (builder) => ({
    getCustomer: builder.query<{ customer: ICustomer }, void>({
      query() {
        return {
          url: 'store/customers/me',
          method: 'GET',
        };
      },
    }),
    updateCustomer: builder.mutation<{ customer: ICustomer }, UpdateCustomerRequest>({
      query(arg) {
        return {
          url: 'store/customers/me',
          method: 'POST',
          body: { ...arg },
        };
      },
    }),
  }),
});

export const { useGetCustomerQuery, useUpdateCustomerMutation } = customerApi;
