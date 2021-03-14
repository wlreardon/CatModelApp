FROM python:3.8-slim-buster

#RUN apt-get update -y && \
#    apt-get install -y python-pip python3-dev

COPY ./requirements.txt /CatModelApp/requirements.txt

#COPY . /CatModelApp

# Working Directory
WORKDIR /CatModelApp

# Copy source code to working directory
#COPY 'requirements.txt' .

# Install packages from requirements.txt
# hadolint ignore=DL3013
#RUN pip install --upgrade pip &&\
#    pip install --trusted-host pypi.python.org -r requirements.txt
RUN pip install -r requirements.txt

COPY . /CatModelApp

#COPY . .

#CMD ["model.py"]

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
