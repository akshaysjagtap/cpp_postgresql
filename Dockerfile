FROM ubuntu:18.04
RUN apt -q update -y
CMD ["echo", "Update Done"]
RUN apt install build-essential -y
 
CMD ["echo", "Installing g++"]
RUN apt install -y lsb-release && apt-get clean all
CMD ["echo", "Installing lsb "]
RUN apt install cppcheck -y
RUN apt --fix-broken install
RUN apt install libpqxx-dev -y
RUN apt install cppcheck -y
RUN apt install firewalld -y
