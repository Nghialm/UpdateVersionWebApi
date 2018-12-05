FROM python:3.6.1-alpine
RUN pip install flask
CMD ["python","api.py"]
WORKDIR /api
COPY api /api