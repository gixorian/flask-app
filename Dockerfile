FROM python:3.12.0-slim

COPY requirements.txt /app/

WORKDIR /app

RUN pip install -Ur requirements.txt

COPY ./app/ /app/
COPY ./data/ /data/

EXPOSE 5000

CMD ["python", "flask-memes.py"]
