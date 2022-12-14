FROM python:3.8-alpine
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN pip install flask
RUN pip freeze > requirements.txt
CMD ["python", "app.py"]
