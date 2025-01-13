# Use a imagem oficial do Python como base
FROM python:3.9

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia os arquivos de código-fonte da sua aplicação para o diretório de trabalho
COPY . /app

# Instala as dependências do Python
RUN pip install -r requirements.txt

# Expõe a porta em que a aplicação Flask estará ouvindo
EXPOSE 5000

# Comando para iniciar a aplicação Flask quando o contêiner for iniciado
CMD ["gunicorn", "--bind","0.0.0.0:5005", "app:app"]