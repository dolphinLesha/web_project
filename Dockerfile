# Pull base image
FROM python:3.9

# Set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /src/app/

# Install dependencies
COPY ./requirements.txt /src/app/requirements.txt
RUN pip install --upgrade pip \
    && pip install --no-cache -r /src/app/requirements.txt

COPY . /src/app/

EXPOSE 8000