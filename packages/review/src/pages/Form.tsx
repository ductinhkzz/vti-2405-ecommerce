import React from 'react';
import { Accordion } from '../components';

const Form = () => {
  return (
    <div className='mx-auto w-full divide-y divide-white/5 rounded-xl bg-white/5'>
      <Accordion title='Formik'>
        <p>Example</p>
        <div className='my-4'>
          <iframe
            className='codesandbox'
            style={{ width: '100%', height: 800, border: 0, borderRadius: 4, overflow: 'hidden' }}
            src='https://codesandbox.io/p/sandbox/github/formik/formik/tree/main/examples/basic-typescript?from-embed='
            title='redux-essentials-example'
            allow='geolocation; microphone; camera; midi; vr; accelerometer; gyroscope; payment; ambient-light-sensor; encrypted-media; usb'
            sandbox='allow-modals allow-forms allow-popups allow-scripts allow-same-origin'
          ></iframe>
        </div>
        <p>Yup validation</p>
        <div className='my-4'>
          <iframe
            className='codesandbox'
            style={{ width: '100%', height: 800, border: 0, borderRadius: 4, overflow: 'hidden' }}
            src='https://codesandbox.io/p/sandbox/react-formik-yup-y37yq?file=%2Fsrc%2FApp.js'
            title='redux-essentials-example'
            allow='geolocation; microphone; camera; midi; vr; accelerometer; gyroscope; payment; ambient-light-sensor; encrypted-media; usb'
            sandbox='allow-modals allow-forms allow-popups allow-scripts allow-same-origin'
          ></iframe>
        </div>
      </Accordion>
      <Accordion title='React hook form'>
        <p>Example</p>
        <div className='my-4'>
          <iframe
            className='codesandbox'
            style={{ width: '100%', height: 800, border: 0, borderRadius: 4, overflow: 'hidden' }}
            src='https://codesandbox.io/p/sandbox/react-hook-form-typescript-qwk7b?file=%2Fsrc%2Findex.tsx'
            title='redux-essentials-example'
            allow='geolocation; microphone; camera; midi; vr; accelerometer; gyroscope; payment; ambient-light-sensor; encrypted-media; usb'
            sandbox='allow-modals allow-forms allow-popups allow-scripts allow-same-origin'
          ></iframe>
        </div>
        <p>Yup validation</p>
        <div className='my-4'>
          <iframe
            className='codesandbox'
            style={{ width: '100%', height: 800, border: 0, borderRadius: 4, overflow: 'hidden' }}
            src='https://codesandbox.io/p/sandbox/react-hook-form-v7-validationschema-rm35t?file=%2Fsrc%2Findex.js'
            title='redux-essentials-example'
            allow='geolocation; microphone; camera; midi; vr; accelerometer; gyroscope; payment; ambient-light-sensor; encrypted-media; usb'
            sandbox='allow-modals allow-forms allow-popups allow-scripts allow-same-origin'
          ></iframe>
        </div>
      </Accordion>
    </div>
  );
};

export default Form;
