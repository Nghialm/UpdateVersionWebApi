FROM python:3.6.1-alpine
RUN pip install flask
WORKDIR /api
COPY api /api
ENTRYPOINT "python" "api.py"
