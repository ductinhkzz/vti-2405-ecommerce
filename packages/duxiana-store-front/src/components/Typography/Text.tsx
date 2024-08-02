import { twMerge } from 'tailwind-merge';

type SizeType = 'sm' | 'md' | 'xs' | 'lg' | 'xl';

type TrackingType = 'widest' | 'wider' | 'wide' | 'normal';

type TextFontWeightType = 'light' | 'normal' | 'medium' | 'bold';

type TextColor = 'light' | 'dark';

type TextVariantType = 'text' | 'h1' | 'h2' | 'h3' | 'h4' | 'h5' | 'h6' | 'div' | 'span';

interface TextProps {
  size?: SizeType;
  tracking?: TrackingType;
  uppercase?: boolean;
  fontWeight?: TextFontWeightType;
  color?: TextColor;
  variant?: TextVariantType;
  children?: React.ReactNode;
  className?: string;
}

const TEXT_SIZE_MAP: Record<SizeType, string> = {
  sm: 'text-sm font-thin tracking-wide',
  md: 'text-md font-normal',
  xs: 'text-xs',
  lg: 'text-xl',
  xl: 'text-3xl',
};

const TEXT_TRACKING_MAP: Record<TrackingType, string> = {
  wide: 'tracking-wide',
  wider: 'tracking-wider',
  widest: 'tracking-widest',
  normal: 'tracking-normal',
};

const FONT_WEIGHT_MAP: Record<TextFontWeightType, string> = {
  light: 'font-light',
  normal: 'font-normal',
  medium: 'font-medium',
  bold: 'font-bold',
};

const COLOR_MAP: Record<TextColor, string> = {
  light: 'text-white',
  dark: 'text-gray-900',
};

const Text = ({
  className,
  color = 'dark',
  size = 'sm',
  tracking = 'normal',
  fontWeight = 'normal',
  variant = 'text',
  uppercase,
  children,
}: TextProps) => {
  const classes = twMerge(
    COLOR_MAP[color],
    TEXT_SIZE_MAP[size],
    TEXT_TRACKING_MAP[tracking],
    FONT_WEIGHT_MAP[fontWeight],
    uppercase && 'uppercase',
    className,
  );

  switch (variant) {
    case 'text':
      return <p className={classes}>{children}</p>;
    case 'div':
      return <div className={classes}>{children}</div>;
    case 'span':
      return <span className={classes}>{children}</span>;
    case 'h1':
      return <h1 className={classes}>{children}</h1>;
    case 'h2':
      return <h2 className={classes}>{children}</h2>;
    case 'h3':
      return <h3 className={classes}>{children}</h3>;
    case 'h4':
      return <h4 className={classes}>{children}</h4>;
    case 'h5':
      return <h5 className={classes}>{children}</h5>;
    case 'h6':
      return <h6 className={classes}>{children}</h6>;
  }
};

export { Text };
