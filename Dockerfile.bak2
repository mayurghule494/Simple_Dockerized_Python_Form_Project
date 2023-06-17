
FROM python:3.9
WORKDIR /var/www/html
RUN apt-get update
RUN python -m pip install --upgrade pip
# RUN pip install -r requirements.txt
RUN pip freeze > requirements.txt
RUN apt-get install python3 python3-flask python3-pymysql python3-boto3 -y
RUN apt-get update
RUN apt-get install nginx -y
# RUN rm /etc/nginx/conf.d/default.conf
COPY . /var/www/html

COPY default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["python","EmpApp.py"]
