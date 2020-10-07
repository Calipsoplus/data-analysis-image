FROM aicampbell/vnc-ubuntu18-xfce

USER root

RUN apt update

# Install Python and build tools
RUN apt-get install -y python3 python3-pip python-dev python3-dev \
build-essential libssl-dev libffi-dev \
libxml2-dev libxslt1-dev zlib1g-dev \
python-pip  mesa-common-dev

# Install silx
RUN pip3 install pyqt5==5.14.0
RUN pip3 install silx[full]

# Install pyFAI
RUN pip3 install pyfai

# Install pymca
RUN pip3 install PyMca5

# Switch to normal user
USER 1000
