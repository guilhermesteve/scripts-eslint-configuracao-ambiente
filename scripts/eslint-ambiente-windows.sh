code --install-extension dbaeumer.vscode-eslint

set settingsPath=.vscode\settings.json

echo {
  "editor.codeActionsOnSave": {
    "source.fixAll.eslint": true
  }
} > temp.json

md .vscode

type temp.json > %settingsPath%

del temp.json

echo "Extensão ESLint instalada e configuração adicionada com sucesso!"