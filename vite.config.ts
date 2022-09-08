import { fileURLToPath, URL } from "node:url";

import { defineConfig } from "vite";
import vue from "@vitejs/plugin-vue";
import vueJsx from "@vitejs/plugin-vue-jsx";
import ImportMetaEnvPlugin from "@import-meta-env/unplugin";

//vitejs.dev/config/
export default defineConfig({
  plugins: [
    vue(),
    vueJsx(),
    ImportMetaEnvPlugin.vite({
      example: ".env.example",
    }),
  ],
  resolve: {
    alias: {
      "@": fileURLToPath(new URL("./src", import.meta.url)),
    },
  },
});
