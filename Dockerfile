FROM python:2.7.15-alpine3.8

MAINTAINER Edmund Ochieng

RUN pip install --no-cache-dir gunicorn flask

RUN mkdir /webapp/
ADD ./*.py /webapp/
WORKDIR /webapp/
EXPOSE 8080
CMD ["gunicorn","-b","0.0.0.0:8080","wsgi"]
