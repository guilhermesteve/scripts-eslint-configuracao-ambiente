# Cria o arquivo de configuração do EsLint
echo '{
  "rules": {
    "no-unused-vars": "off",
    "@typescript-eslint/no-unused-vars": [
      "error",
      {
        "argsIgnorePattern": "^_"
      }
    ]
  },
  "extends": "@rocketseat/eslint-config/node"
}' > .eslintrc.json

echo 'node_modules
.vscode
.github
dist' > .eslintignore

npm install -D eslint

npm i -D eslint @rocketseat/eslint-config

npm pkg set 'eslint . --ext .ts,.tsx --fix --ignore-path .eslintignore'

npm run lint