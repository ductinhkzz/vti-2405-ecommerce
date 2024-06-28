export interface ICard {
  id: string;
  title: string;
  description: string;
  image: string;
  isTextTop?: boolean;
  btn?: {
    url?: string;
    text?: string;
  };
}
