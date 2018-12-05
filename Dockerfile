FROM python:3.6.1-alpine
RUN pip install flask
COPY . /app
WORKDIR /app
EXPOSE 5000
CMD python ./api.py