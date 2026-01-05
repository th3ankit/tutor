FROM python:3.7-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --upgrade pip \
    && pip install -r requirements.txt

COPY . .

# REQUIRED by your project
ENV DJANGO_SETTINGS_CONFIG=astroedu.settings.dev

# Also set this for Django compatibility
ENV DJANGO_SETTINGS_MODULE=astroedu.settings.dev

CMD ["sh", "-c", "python manage.py runserver 0.0.0.0:$PORT"]
