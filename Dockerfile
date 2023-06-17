FROM python:3.8-alpine
WORKDIR /var/www/html
RUN apt-get update
RUN apt-get install nginx -y
# RUN rm /etc/nginx/conf.d/default.conf
COPY . /var/www/html

COPY default.conf /etc/nginx/conf.d/default.conf

# RUN apt-get install python3-pip -y
RUN apt-get install flask 
RUN pip install -r requirements.txt
RUN apt-get install libsasl2-dev python-dev libldap2-dev libssl-dev libsnmp-dev -y

RUN apt-get install python3 python3-flask python3-pymysql python3-boto3 -y
# Expose port 80
EXPOSE 80
ENTRYPOINT [ "python" ]
ENTRYPOINT ["python", "EmpApp.py"]
