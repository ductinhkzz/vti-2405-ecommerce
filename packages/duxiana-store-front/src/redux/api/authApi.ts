import { ICustomer, LoginRequestType } from '../types';
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
    customerLogout: builder.mutation<void, void>({
      query() {
        return {
          url: 'store/auth',
          method: 'DELETE',
        };
      },
      invalidatesTags: ['Auth'],
    }),
  }),
});

export const { useLoginMutation, useCustomerLogoutMutation } = authApi;
