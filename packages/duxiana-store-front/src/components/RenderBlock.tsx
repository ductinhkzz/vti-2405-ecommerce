import {
  CardSliderSection,
  CardSliderSectionProps,
  HeaderDivider,
  HeaderDividerProps,
  HeroCardBlockSection,
  HeroCardBlockSectionProps,
  HeroSection,
  ImageList,
  ImageListProps,
  ImageSliderSection,
  ImageSliderSectionProps,
  TextBlock,
  TextBlockProps,
} from './sections';

const RenderBlock = (props: Record<string, any>) => {
  switch (props.type) {
    case 'text-block':
      return <TextBlock {...(props as TextBlockProps)} />;
    case 'hero-block':
      return <HeroSection {...props} />;
    case 'header-divider-block':
      return <HeaderDivider {...(props as HeaderDividerProps)} />;
    case 'image-list-block':
      return <ImageList {...(props as ImageListProps)} />;
    case 'hero-card-block':
      return <HeroCardBlockSection {...(props as HeroCardBlockSectionProps)} />;
    case 'card-slider-block':
      return <CardSliderSection {...(props as CardSliderSectionProps)} />;
    case 'image-slider-block':
      return <ImageSliderSection {...(props as ImageSliderSectionProps)} />;
    default:
      return null;
  }
};

export { RenderBlock };
