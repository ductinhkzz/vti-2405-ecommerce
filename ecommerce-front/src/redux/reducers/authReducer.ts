import { PayloadAction, createSlice } from '@reduxjs/toolkit';

import { ICustomer } from '../types';
import { authApi } from '../api';

export type AuthStateType = {
  customer?: ICustomer;
};

const initialState: AuthStateType = {};

export const authReducer = createSlice({
  name: 'auth',
  initialState,
  reducers: {
    setCustomer: (state, action: PayloadAction<ICustomer | undefined>) => {
      state.customer = action.payload;
    },
  },
  extraReducers: (builder) => {
    builder
      .addMatcher(authApi.endpoints.login.matchFulfilled, (state, action) => {
        state.customer = action.payload.customer;
      })
      .addMatcher(authApi.endpoints.login.matchRejected, (state) => {
        state.customer = undefined;
      })
      .addMatcher(authApi.endpoints.getCustomer.matchFulfilled, (state, action) => {
        state.customer = action.payload.customer;
      })
      .addMatcher(authApi.endpoints.getCustomer.matchRejected, (state) => {
        state.customer = undefined;
      });
  },
});

export const { setCustomer } = authReducer.actions;

export default authReducer.reducer;
