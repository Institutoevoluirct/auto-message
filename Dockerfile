# Dockerfile para a aplicação front-end React

# Use a imagem oficial do Node.js como base
FROM mhart/alpine-node:12


# Instalação do Git
RUN apk add --no-cache git

# Atualização do npm
RUN npm install 

EXPOSE 8000

# Diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie os arquivos de configuração e dependências
COPY package*.json ./

# Instale as dependências do projeto
RUN npm install

# Comando para iniciar a aplicação
CMD ["npm", "legacy"]
