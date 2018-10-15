FROM python:2-alpine

WORKDIR /usr/src/app

COPY app/ ./
RUN pip install --no-cache-dir -r requirements.txt
RUN apk --no-cache add curl
CMD [ "python", "./runserver.py" ]
