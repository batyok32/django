FROM python:3.8.3

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1

# RUN apt-get update && apt-get install postgresql-dev gcc python3-dev musl-dev
# RUN apk add postgresql/
# RUN python setup.py build_ext --pg-config /app/pg_config build

RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt


COPY . .

# # pull official base image
# FROM python:3.8.3-alpine


# # set environment variables
# ENV PYTHONDONTWRITEBYTECODE 1
# ENV PYTHONUNBUFFERED 1


# # set work directory
# WORKDIR /usr/src/app

# # install dependencies
# RUN pip install --upgrade pip
# COPY ./requirements.txt .
# RUN pip install -r requirements.txt

# #Copy project
# COPY . /usr/src/app

# EXPOSE 8000