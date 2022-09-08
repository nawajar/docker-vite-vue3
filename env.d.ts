/// <reference types="vite/client" />

interface ImportMetaEnv {
    readonly APP_TITLE: string;
  }
  
  interface ImportMeta {
    readonly env: ImportMetaEnv;
  }