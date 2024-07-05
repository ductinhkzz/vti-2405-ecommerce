export type OptionType<T extends string | number = string> = {
  label: string;
  value: T;
};
