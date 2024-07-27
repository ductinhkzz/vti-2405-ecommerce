import { CartWithCheckoutStep } from '@/redux/types';

type ReviewProps = {
  cart: CartWithCheckoutStep;
};
const Review = ({ cart }: ReviewProps) => {
  return <div>Review</div>;
};

export default Review;
