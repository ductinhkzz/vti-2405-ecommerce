import { ICustomer, LoginRequestType, UpdateCustomerRequest } from '../types';
import { api } from './baseApi';

export const authApi = api.injectEndpoints({
  endpoints: (builder) => ({
    login: builder.mutation<{ customer: ICustomer }, LoginRequestType>({
      query(arg) {
        return {
          url: 'store/auth',
          method: 'POST',
          body: { ...arg },
        };
      },
      invalidatesTags: ['Auth'],
    }),
    getCustomer: builder.query<{ customer: ICustomer }, void>({
      query() {
        return {
          url: 'store/auth',
          method: 'GET',
        };
      },
    }),
    customerLogout: builder.mutation<void, void>({
      query() {
        return {
          url: 'store/auth',
          method: 'DELETE',
        };
      },
      invalidatesTags: ['Auth'],
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

export const { useLoginMutation, useGetCustomerQuery, useCustomerLogoutMutation, useUpdateCustomerMutation } = authApi;
