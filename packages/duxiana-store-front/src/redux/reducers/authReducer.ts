import { PayloadAction, createSlice } from '@reduxjs/toolkit';

import { ICustomer } from '../types';
import { customerApi } from '../api';

export type AuthStateType = {
  customer?: ICustomer;
};

const initialState: AuthStateType = {};

export const authSlice = createSlice({
  name: 'auth',
  initialState,
  reducers: {
    setCustomer: (state, action: PayloadAction<ICustomer | undefined>) => {
      state.customer = action.payload;
    },
  },
  extraReducers: (builder) => {
    builder
      .addMatcher(customerApi.endpoints.getCustomer.matchFulfilled, (state, action) => {
        state.customer = action.payload.customer;
      })
      .addMatcher(customerApi.endpoints.getCustomer.matchRejected, (state) => {
        state.customer = undefined;
      });
  },
});

export const { setCustomer } = authSlice.actions;

export const authReducer = authSlice.reducer;
