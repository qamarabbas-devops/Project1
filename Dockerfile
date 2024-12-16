FROM ubuntu:latest
RUN apt-get update && apt-get install -y apache2 zip unzip wget 
WORKDIR /var/www/html
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page296/inance.zip
RUN unzip inance.zip
RUN cp -rvf inance/* .
RUN rm -rf inance inance.zip
CMD ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80 22 