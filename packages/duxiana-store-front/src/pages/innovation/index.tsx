import { HeaderDivider, HeroSection, TextBlock } from '@/components';
import { usePageTitle } from '@/hooks';

const Innovation = () => {
  usePageTitle('Innovation | Duxiana');
  return (
    <>
      <HeaderDivider
        title='Continuous development'
        sub_title='DUX Innovative Design'
        description='We have dedicated the last 90 years to improving our beds, and we continue to do so. In-depth research lets us achieve the goal of constructing beds that allow deep sleep, giving you the comfort needed to regenerate your body while sleeping. For DUX, innovation does not mean a change in color. Before incorporating any improvement into our products, we conduct exhaustive research, allowing only measurable and verifiable upgrades.'
      />
      <HeroSection
        medias={[
          {
            url: 'https://dux-usa.prep.kan.solutions/siteassets/images/why-dux/innovation/dux9091.jpg',
          },
        ]}
        theme='black'
      />
      <HeaderDivider
        theme='gray'
        title='DYNAMIC SUPPORT'
        description='You never stay perfectly still while sleeping. That is why you need a dynamic bed to contour all of your movements at night. The revolutionary DUX spring system adjusts itself to the weight and shape of your body. It moves as you move, providing continuous support and allowing your blood to circulate freely while your muscles relax. '
      />
      <HeroSection
        medias={[
          {
            url: 'https://dux-usa.prep.kan.solutions/siteassets/images/why-dux/innovation/dux-continuous-coil-full-width-banner.jpg?width=1430&height=953&mode=crop',
          },
        ]}
        title='Unique continuous coil spring design'
        description='The springs are flexible enough to let your shoulders and hips sink in, yet resilient enough to support your lower back. The spaces around the coils allow our beds to breathe, shuttling body heat out of the mattress. The airflow reduces odors and produces ventilation to combat bacteria or fungus. Thanks to the added resilience of our continuous coil design, you will never have to flip your DUX mattress. The springs do not lose their retention over time. That is why our beds are for life.'
        actions={[
          {
            text: 'Learn more',
            url: '',
            color: 'primary',
          },
        ]}
        theme='black'
      />
      <HeroSection
        medias={[
          {
            url: 'https://www.duxiana.com/static/c3c113f939b5cc9f032860f3064a7027/4a56b/dux_comfort_test_01.jpg',
            position: 'right',
          },
        ]}
        title='TIME-TESTED TECHNOLOGY'
        description='We are continuously refining, improving, and innovating our signature technology. Until now, the precise network of interlocking high-tensile steel springs has already stood the test of time. Our development works, and we have the history to prove it.'
      />
      <TextBlock
        title='Keep your spine in line'
        description='The DUX Bed aligns your spine to help alleviate back pain and distributes your weight evenly. Our goal is to let you rest in the correct posture. It is only possible when your body is supported along its entire length.'
      />
    </>
  );
};

export default Innovation;
