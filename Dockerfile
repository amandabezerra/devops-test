FROM python:3
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/

RUN apt-get update && pip install --upgrade pip
	
RUN pip install -r requirements.txt
ADD . /code/
CMD ./run.sh
