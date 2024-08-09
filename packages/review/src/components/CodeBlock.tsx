import { CodeBlock as ReactCodeBlock, dracula } from 'react-code-blocks';

type CodeBlockProps = {
  code: string;
  language?: string;
};

const CodeBlock = ({ code, language = 'typescript' }: CodeBlockProps) => (
  <ReactCodeBlock text={code} language={language} showLineNumbers theme={dracula} />
);

export { CodeBlock };
