const js = require("@eslint/js");
const tseslint = require("typescript-eslint");
const sheriff = require("@softarc/eslint-plugin-sheriff");

module.exports = tseslint.config(
  js.configs.recommended,
  ...tseslint.configs.recommended,
  {
    files: ["src/**/*.ts"],
    plugins: { sheriff },
    rules: {
      "sheriff/dependency-rule": "error"
    }
  }
);
