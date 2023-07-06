# Dockerfile

FROM python:3.10

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . code
WORKDIR /code

EXPOSE 8001

ENTRYPOINT ["python", "manage.py"]
CMD ["runserver", "0.0.0.0:8001"]