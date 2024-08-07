import { CopyBlock, dracula } from 'react-code-blocks';

type CodeBlockProps = {
  code: string;
  language?: string;
};

const CodeBlock = ({ code, language = 'typescript' }: CodeBlockProps) => (
  <CopyBlock text={code} language={language} showLineNumbers theme={dracula} codeBlock />
);

export { CodeBlock };
