FROM python:3.6.1-alpine
RUN pip install flask
CMD ["python","api/api.py"]
COPY . /