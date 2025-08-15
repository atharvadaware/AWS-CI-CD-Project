FROM python:3.10-slim
COPY . /app
WORKDIR /app

RUN apt-get update -y && apt-get install -y awscli

RUN pip install -r requirements.txt
CMD ["python3","application.py"]