FROM python:3.6.1-alpine
RUN pip install flask
CMD ["python","api.py"]
COPY api.py /api.py
COPY version.txt /version.txt