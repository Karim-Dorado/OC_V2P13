FROM python:3.9.1

WORKDIR /app

ENV PYTHON_VERSION=3.9.1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV PORT=8000
ENV SECRET_KEY fp$9^593hsriajg$_%=5trot9g!1qa@ew(o-1#@=&4%=hp46(s

COPY requirements.txt /app/
RUN pip install -r requirements.txt

COPY . /app/
VOLUME /app

CMD python manage.py runserver 0.0.0.0:$PORT