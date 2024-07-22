import { ActionType } from './common';

export interface ICard {
  title: string;
  description: string;
  image: string;
  isTextTop?: boolean;
  btn?: ActionType;
}
