import { ICustomer, LoginRequestType } from '../types';
import { api } from './baseApi';

export const authApi = api.injectEndpoints({
  endpoints: (builder) => ({
    login: builder.mutation<ICustomer, LoginRequestType>({
      query(arg) {
        return {
          url: 'store/auth',
          method: 'POST',
          body: { ...arg },
        };
      },
      invalidatesTags: ['Auth'],
    }),
    getCustomer: builder.query<ICustomer, void>({
      query() {
        return {
          url: 'store/auth',
          method: 'GET',
        };
      },
    }),
  }),
});

export const { useLoginMutation, useGetCustomerQuery } = authApi;
