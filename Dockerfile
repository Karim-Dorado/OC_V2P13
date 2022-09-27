FROM python:3

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY requirements.txt /app/
RUN pip install -r requirements.txt

COPY . /app/

ENV PORT=8000

CMD ["python3", "manage.py", "runserver", "0.0.0.0:$PORT","--noreload"]