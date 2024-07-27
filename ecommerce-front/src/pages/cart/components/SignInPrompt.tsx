import { Button } from '@/components';

const SignInPrompt = () => {
  return (
    <div className='bg-white flex items-center justify-between'>
      <div>
        <h2 className='text-lg font-semibold'>Already have an account?</h2>
        <p className='mt-2 text-sm'>Sign in for a better experience.</p>
      </div>
      <div>
        <a href='/login'>
          <Button color='secondary' rounded>Sign in</Button>
        </a>
      </div>
    </div>
  );
};

export { SignInPrompt };
