From python:stretch

copy . /app
WORKDIR /app

RUN pip install -r requirements.txt
EXPOSE 8000

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]