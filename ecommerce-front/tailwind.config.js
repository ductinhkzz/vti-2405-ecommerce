/** @type {import('tailwindcss').Config} */
export default {
  content: ['./index.html', './src/**/*.{js,ts,jsx,tsx}'],
  theme: {
    extend: {
      backgroundImage: {
        'hero-pattern-1': "url('./src/assets/images/hero-img-1.webp')",
      }
    }
  },
  plugins: [],
};
