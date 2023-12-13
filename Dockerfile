# syntax=docker/dockerfile:1

FROM python:slim-bullseye

WORKDIR /app
RUN mkdir images
COPY images/itsworking.jpeg images/itsworking.jpeg

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
