# Use uma imagem base leve do Node.js
FROM node:14

# Crie um diretório de trabalho no contêiner
WORKDIR /usr/src/app

# Copie os arquivos do diretório local para o diretório de trabalho no contêiner
COPY . .

# Instale as dependências
RUN npm install -g http-server

# Exponha a porta necessária (se sua aplicação estiver ouvindo em uma porta específica)
EXPOSE 8000

# Comando de inicialização da aplicação
CMD ["npm", "start"]
