import { createSlice } from '@reduxjs/toolkit';

import { regionApi } from '../api';
import { OptionType } from '@/types';

export type GlobalStateType = {
  countryOptions: OptionType<string>[];
};

const initialState: GlobalStateType = {
  countryOptions: [],
};

export const gloablSlice = createSlice({
  name: 'global',
  initialState,
  reducers: {},
  extraReducers: (builder) => {
    builder
      .addMatcher(regionApi.endpoints.getRegion.matchFulfilled, (state, action) => {
        state.countryOptions = action.payload
          .map((region) => region.countries)
          .flat()
          .map((country) => ({ label: country.display_name, value: country.iso_2 }));
      })
      .addMatcher(regionApi.endpoints.getRegion.matchRejected, (state) => {
        state.countryOptions = [];
      });
  },
});

export const globalReducer = gloablSlice.reducer;
