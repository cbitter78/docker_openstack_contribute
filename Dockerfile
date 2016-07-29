FROM ubuntu

MAINTAINER Charles Bitter "cbitter78@cbitter78@gmail.com"

# Install base os tools that are needed
RUN export DEBIAN_FRONTEND=noninteractive && apt-get update

RUN export DEBIAN_FRONTEND=noninteractive && \
  apt-get install -y software-properties-common build-essential git ssh \
                     vim curl wget man psmisc zsh patch mysql-client

RUN export DEBIAN_FRONTEND=noninteractive && \
  apt-get install -y python2.7 python2.7-dev libpython2.7-dev libssl-dev libffi-dev \
                     python-pip python-dev build-essential python-tox

RUN pip install --upgrade pip && pip install --upgrade virtualenv 

RUN pip install git-review pep8

RUN export DEBIAN_FRONTEND=noninteractive && apt-get install -y  \
 	python-ceilometerclient \
 	python-cinderclient \
 	python-glanceclient \
 	python-heatclient \
 	python-keystoneclient \
 	python-mysqldb \
 	python-neutronclient \
 	python-novaclient \
 	python-swiftclient \
 	python-troveclient \
 	python-openstackclient

ADD vimrc /root/.vimrc
ADD run.sh /run.sh
CMD /run.sh
RUN chmod +x /run.sh