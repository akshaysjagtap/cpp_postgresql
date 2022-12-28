FROM debian:11
#FROM debian
#RUN apt-get -q update -y
CMD ["echo", "Update Done"]
RUN apt-get install build-essential -y
 
CMD ["echo", "Installing g++"]
RUN apt-get install -y lsb-release && apt-get clean all
CMD ["echo", "Installing lsb "]
RUN apt-get install cppcheck -y
#RUN systemctl start firewalld
#RUN systemctl enable firewalld
#RUN systemctl status firewalld
#RUN sudo service firewalld status
RUN apt --fix-broken install
RUN apt-get install libpqxx-dev -y
