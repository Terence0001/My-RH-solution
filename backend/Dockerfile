FROM python:3.9.12
WORKDIR /app
COPY manage.py /app/manage.py
COPY My_RH_Solution /app/My_RH_Solution
COPY requirements.txt /app/requirements.txt
COPY crud /app/crud
RUN pip install -r requirements.txt
CMD python manage.py runserver 0.0.0.0:8000


