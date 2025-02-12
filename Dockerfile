FROM python:3.9.9
copy . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE $PORT 
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app