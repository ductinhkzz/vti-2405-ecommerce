import { createSlice, PayloadAction } from '@reduxjs/toolkit';

import { regionApi } from '../api';
import { OptionType } from '@/types';
import { ICart } from '../types';
import { cartApi } from '../api/cartApi';

export type GlobalStateType = {
  countryOptions: OptionType<string>[];
  cart?: ICart;
};

const initialState: GlobalStateType = {
  countryOptions: [],
};

export const gloablSlice = createSlice({
  name: 'global',
  initialState,
  reducers: {
    setCart: (state, action: PayloadAction<ICart>) => {
      state.cart = action.payload;
    },
  },
  extraReducers: (builder) => {
    builder
      .addMatcher(regionApi.endpoints.getRegions.matchFulfilled, (state, action) => {
        state.countryOptions = action.payload
          .map((region) => region.countries)
          .flat()
          .map((country) => ({ label: country.display_name, value: country.iso_2 }));
      })
      .addMatcher(regionApi.endpoints.getRegions.matchRejected, (state) => {
        state.countryOptions = [];
      })
      .addMatcher(cartApi.endpoints.getCart.matchFulfilled, (state, action) => {
        state.cart = action.payload;
      })
      .addMatcher(cartApi.endpoints.addLineItemsToCard.matchFulfilled, (state, action) => {
        state.cart = action.payload;
      });
  },
});

export const globalReducer = gloablSlice.reducer;

export const { setCart } = gloablSlice.actions;
