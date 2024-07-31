import { ICart } from '../types';
import { api } from './baseApi';

export const cartApi = api.injectEndpoints({
  endpoints: (builder) => ({
    getCart: builder.query<ICart, string>({
      query(id) {
        return {
          url: `store/carts/${id}`,
          method: 'GET',
        };
      },
      transformResponse: (response: { cart: ICart }) => {
        return response.cart;
      },
      providesTags: (arg) => [{ type: 'Cart', id: arg?.id }],
    }),
    createCart: builder.mutation<ICart, { region_id: string }>({
      query(arg) {
        return {
          url: `store/carts`,
          method: 'POST',
          body: { ...arg },
        };
      },
      transformResponse: (response: { cart: ICart }) => {
        return response.cart;
      },
    }),
    updateCart: builder.mutation<ICart, Omit<Partial<ICart>, 'id'> & { id: ICart['id'] }>({
      query({ id, ...arg }) {
        return {
          url: `store/carts/${id}`,
          method: 'POST',
          body: { ...arg },
        };
      },
      transformResponse: (response: { cart: ICart }) => {
        return response.cart;
      },
      invalidatesTags: (arg) => [{ type: 'Cart', id: arg?.id }],
    }),
    addLineItemsToCard: builder.mutation<ICart, { cart_id: string; variant_id: string; quantity: number }>({
      query({ cart_id, ...arg }) {
        return {
          url: `/store/carts/${cart_id}/line-items`,
          method: 'POST',
          body: { ...arg },
        };
      },
      transformResponse: (response: { cart: ICart }) => {
        return response.cart;
      },
    }),
    updateLineItem: builder.mutation<ICart, { cart_id: string; line_id: string; quantity: number }>({
      query({ cart_id, line_id, ...arg }) {
        return {
          url: `/store/carts/${cart_id}/line-items/${line_id}`,
          method: 'POST',
          body: { ...arg },
        };
      },
      transformResponse: (response: { cart: ICart }) => {
        return response.cart;
      },
      invalidatesTags: (arg) => [{ type: 'Cart', id: arg?.id }],
    }),
    createCartPaymentSession: builder.mutation<ICart, { cart_id: string }>({
      query({ cart_id }) {
        return {
          url: `/store/carts/${cart_id}/payment-sessions`,
          method: 'POST',
        };
      },
      transformResponse: (response: { cart: ICart }) => {
        return response.cart;
      },
      invalidatesTags: (arg) => [{ type: 'Cart', id: arg?.id }],
    }),
    addShippingMethod: builder.mutation<ICart, { cart_id: string; option_id: string }>({
      query({ cart_id, ...arg }) {
        return {
          url: `/store/carts/${cart_id}/shipping-methods`,
          method: 'POST',
          body: { ...arg },
        };
      },
      transformResponse: (response: { cart: ICart }) => {
        return response.cart;
      },
      invalidatesTags: (arg) => [{ type: 'Cart', id: arg?.id }],
    }),
    selectPaymentSession: builder.mutation<ICart, { cart_id: string; provider_id: string }>({
      query({ cart_id, ...arg }) {
        return {
          url: `/store/carts/${cart_id}/payment-session`,
          method: 'POST',
          body: { ...arg },
        };
      },
      transformResponse: (response: { cart: ICart }) => {
        return response.cart;
      },
      invalidatesTags: (arg) => [{ type: 'Cart', id: arg?.id }],
    }),
    completeCart: builder.mutation<ICart, { cart_id: string }>({
      query({ cart_id }) {
        return {
          url: `/store/carts/${cart_id}/complete`,
          method: 'POST',
        };
      },
      transformResponse: (response: { data: ICart }) => {
        return response.data;
      },
    }),
  }),
});

export const {
  useGetCartQuery,
  useUpdateCartMutation,
  useCreateCartMutation,
  useAddLineItemsToCardMutation,
  useUpdateLineItemMutation,
  useCreateCartPaymentSessionMutation,
  useAddShippingMethodMutation,
  useSelectPaymentSessionMutation,
  useCompleteCartMutation,
} = cartApi;
