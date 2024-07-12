import { Slider } from '@/components';
import ContactCard from './ContactCard';

import img1 from '@/assets/images/contact-us/contact-img-1.jpg';
import img2 from '@/assets/images/contact-us/contact-img-2.jpg';
import img3 from '@/assets/images/contact-us/contact-img-3.jpg';

const ContactSlider = () => {
  const contacts = [
    {
      img: img1,
      title: 'DUX North America',
      subTitle: 'HEADQUARTERS ADDRESS',
      type: 'Address',
      contents: [
        '235 E 58TH Street',
        'New York, NY, 10022-1201',
        'United States',
        '800-595-2000',
        '(Monday-Friday, 9am-5pm CT)',
      ],
      links: [
        {
          text: 'View on Google Maps',
          url: '',
        },
      ],
    },
    {
      img: img2,
      title: 'E-mail',
      subTitle: 'HEADQUARTERS ADDRESS',
      type: 'Address',
      links: [
        {
          title: 'Customer Inquiries',
          text: 'customerservice@duxiana.com',
          url: '',
        },
        {
          title: 'Press',
          text: 'presscontact@duxiana.com',
          url: '',
        },
        {
          title: 'Hotel Partnership Inquiries',
          text: 'hospitality@duxiana.com',
          url: '',
        },
      ],
    },
    {
      img: img3,
      title: 'Connect',
      subTitle: 'SOCIAL MEDIA',
      type: 'Social Media',
      links: [
        {
          text: 'Follow on Facebook',
          url: '',
        },
        {
          text: 'Follow on Instagram',
          url: '',
        },
        {
          text: 'Connect on LinkedIn',
          url: '',
        },
      ],
    },
  ];

  return (
    <Slider perView={3} hideAction>
      {contacts.map((contact) => (
        <ContactCard key={contact.title} {...contact} />
      ))}
    </Slider>
  );
};

export { ContactSlider };
