# Instala a extensão ESLint no VS Code
code --install-extension dbaeumer.vscode-eslint

# Define o caminho e o nome do arquivo de configuração
settingsPath=".vscode/settings.json"

# Cria o objeto com as configurações desejadas
settings=$(cat <<EOF
{
  "editor.codeActionsOnSave": {
    "source.fixAll.eslint": true
  }
}
EOF
)

# Cria a pasta .vscode, caso ela não exista
mkdir -p .vscode

# Cria ou sobrescreve o arquivo settings.json com as configurações desejadas
echo "$settings" > "$settingsPath"

echo "Extensão ESLint instalada e configuração adicionada com sucesso!"