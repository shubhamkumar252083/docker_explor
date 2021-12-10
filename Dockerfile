FROM python:3.8-slim-buster

WORKDIR /app 
# WORKDIR /app --> "app" is the folder we created and cd into that.


COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "manage.py", "runserver", "0.0.0.0:7000"]
# "0.0.0.0:7000" --> that is just going to essentially make our application available externally or externally available from outside of the container.