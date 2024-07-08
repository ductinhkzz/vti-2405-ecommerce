import { IAddress, ICustomer, UpdateCustomerRequest } from '../types';
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
      providesTags: [{ type: 'Customer', id: 'cusmomer-data' }],
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
    addShippingAddress: builder.mutation<{ customer: ICustomer }, { address: Partial<IAddress> }>({
      query(arg) {
        return {
          url: 'store/customers/me/addresses',
          method: 'POST',
          body: { ...arg },
        };
      },
      invalidatesTags: [{ type: 'Customer', id: 'cusmomer-data' }],
    }),
    updateShippingAddress: builder.mutation<{ customer: ICustomer }, Partial<IAddress>>({
      query({ id, ...arg }) {
        return {
          url: `store/customers/me/addresses/${id}`,
          method: 'POST',
          body: { ...arg },
        };
      },
      invalidatesTags: [{ type: 'Customer', id: 'cusmomer-data' }],
    }),
    deleteAddress: builder.mutation<void, { id: string }>({
      query({ id }) {
        return {
          url: `store/customers/me/addresses/${id}`,
          method: 'DELETE',
        };
      },
      invalidatesTags: [{ type: 'Customer', id: 'cusmomer-data' }],
    }),
  }),
});

export const {
  useGetCustomerQuery,
  useUpdateCustomerMutation,
  useAddShippingAddressMutation,
  useDeleteAddressMutation,
  useUpdateShippingAddressMutation,
} = customerApi;
