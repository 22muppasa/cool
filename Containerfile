FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN cool create-db
RUN cool populate-db
RUN cool add-user -u admin -p admin
EXPOSE 5000
CMD ["cool", "run"]
