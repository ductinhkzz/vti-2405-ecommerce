import { CardListBlock, HeaderDivider, HeroSection } from '@/components';
import { ContactForm, ContactSlider } from './components';

import { usePageTitle } from '@/hooks';
import imgUrl from '@/assets/images/contact-us/card-list-block.jpg';
import heroImgUrl from '@/assets/images/contact-us/hero-image.jpg';

const ContactUs = () => {
  usePageTitle('Contact us | Duxiana');
  return (
    <>
      <HeaderDivider
        title='CONTACT US'
        sub_title='How can we help?'
        description={`At DUX, we believe that the art of listening is the basis of good communication. That is why we're always ready to hear your questions, ideas, or suggestions. Please fill out the contact form, and we will get back to you as quickly as possible.`}
      />
      <ContactForm />
      <ContactSlider />
      <CardListBlock
        img={imgUrl}
        title='Contact the Press Room'
        subTitle='DUXIANA North America'
        description='Are you working with media? In the DUX press room, you can find the latest articles, press releases, information about the events, media library and press contact.'
        action={{
          text: 'Contact the press room',
          url: '/press-room',
        }}
      />
      <HeroSection
        medias={[
          {
            url: heroImgUrl,
            isVideo: false,
            position: 'right',
          },
        ]}
        theme='gray'
        sub_title='Our stores'
        title='Find a DUX bed close to you'
        actions={[
          {
            text: 'Find your nearest store',
            url: '',
          },
        ]}
        description='To get the specific local information, search for the nearest store. Visit, call, or write to us - we will be more than happy to assist you.'
      />
    </>
  );
};

export default ContactUs;
