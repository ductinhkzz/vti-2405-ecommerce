import { createSlice } from '@reduxjs/toolkit';

import { ICustomer } from '../types';
import { authApi } from '../api';

export interface CounterState {
  customer?: ICustomer;
}

const initialState: CounterState = {};

export const authReducer = createSlice({
  name: 'auth',
  initialState,
  reducers: {
    setCustomer: (state) => {
      return state;
    },
  },
  extraReducers: (builder) => {
    builder
      .addMatcher(authApi.endpoints.login.matchFulfilled, (state, action) => {
        state.customer = action.payload;
      })
      .addMatcher(authApi.endpoints.login.matchRejected, (state) => {
        state.customer = undefined;
      })
      .addMatcher(authApi.endpoints.getCustomer.matchFulfilled, (state, action) => {
        state.customer = action.payload;
      })
      .addMatcher(authApi.endpoints.getCustomer.matchRejected, (state) => {
        state.customer = undefined;
      });
  },
});

export default authReducer.reducer;
