# FROM python:3.9.13
# ENV PYTHONUNBUFFERED 1
# WORKDIR /code
# COPY requirements.txt /code/
# COPY . /code/
# RUN pip install -r requirements.txt
# RUN python /code/manage.py makemigrations
# RUN python /code/manage.py migrate
# CMD ["python", "/code/manage.py", "runserver", "0.0.0.0:8000"]


FROM python:3.9.13
ENV PYTHONUNBUFFERED 1
WORKDIR /code
COPY requirements.txt /code/
COPY . /code/
RUN pip install -r requirements.txt
CMD ["python", "/code/manage.py", "runserver", "0.0.0.0:8000"]
