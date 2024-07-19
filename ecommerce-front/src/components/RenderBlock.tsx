import {
  HeaderDivider,
  HeaderDividerProps,
  HeroSection,
  ImageList,
  ImageListProps,
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
    default:
      return null;
  }
};

export { RenderBlock };
