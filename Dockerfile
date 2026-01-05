FROM python:3.7
WORKDIR /app
COPY requirements.txt
RUN pip install --upgrade pip RUN pip install -r requirements.txt || echo "Warning: Dependencies failed"
COPY
CMD ["python", "manage.py", "runserver", "0.0.0.0:10000"]
