FROM python:3.9.12
WORKDIR /app
COPY backend/manage.py /app/manage.py
COPY backend/My_RH_Solution /app/My_RH_Solution
COPY backend/requirements.txt /app/backend/requirements.txt
RUN pip install -r /app/backend/requirements.txt
CMD python /app/manage.py runserver 0.0.0.0:8000

