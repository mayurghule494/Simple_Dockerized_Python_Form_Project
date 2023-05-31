FROM nginx:latest
WORKDIR /var/www/html
RUN rm /etc/nginx/conf.d/default.conf
COPY . /var/www/html
COPY default.conf /etc/nginx/conf.d/default.conf
RUN apt-get update -y
RUN apt-get install python3-pip -y
RUN pip install -r requirements.txt
RUN apt-get install libsasl2-dev python-dev libldap2-dev libssl-dev libsnmp-dev -y

RUN apt-get install python3 python3-flask python3-pymysql python3-boto3 -y
# Expose port 80
EXPOSE 80
ENTRYPOINT ["python", "EmpApp.py"]
