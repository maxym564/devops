FROM ubuntu
RUN apt-get update
COPY ./check.sh .
RUN touch myapp.log && cd ..
RUN chmod +x ./check.sh
RUN apt-get -y update; apt-get -y install curl
EXPOSE 3000
CMD while true; do * * * * * sleep 15; ./check.sh; done
