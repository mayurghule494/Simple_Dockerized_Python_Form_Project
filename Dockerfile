FROM nginx:latest
WORKDIR /var/www/html
RUN rm /etc/nginx/conf.d/default.conf
COPY . /var/www/html  
COPY default.conf /etc/nginx/conf.d/default.conf
RUN apt-get update
RUN pip install -r requirements.txt
RUN apt-get update -y \
    && apt-get install libsasl2-dev python-dev libldap2-dev libssl-dev libsnmp-dev

RUN sudo apt-get install python3
RUN sudo apt-get install python3-flask
RUN sudo apt-get install python3-pymysql
RUN sudo apt-get install python3-boto3
# Expose port 80
EXPOSE 80
ENTRYPOINT ["python", "EmpApp.py"]
