# Instala a extensão ESLint no VS Code
code --force --install-extension dbaeumer.vscode-eslint

# Define o caminho e o nome do arquivo de configuração
settingsPath=".vscode/settings.json"

# Cria o objeto com as configurações desejadas
settings=$(cat <<EOF
{
  "editor.codeActionsOnSave": {
    "source.fixAll.eslint": true
  },
  "files.eol": "\n"
}
EOF
)

# Cria a pasta .vscode, caso ela não exista
mkdir -p .vscode

# Cria ou sobrescreve o arquivo settings.json com as configurações desejadas
#echo "$settings" >> "$settingsPath"



find . -type f \( -name "*.ts" -o -name "*.tsx" -o -name "*.js" \) -not -path "./node_modules/*" -exec dos2unix {} \;

git config --global core.autocrlf input

git rm --cached -r .
git reset --hard


echo "Extensão ESLint instalada e configuração adicionada com sucesso!"