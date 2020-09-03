FROM jjanzic/docker-python3-opencv

MAINTAINER eric <er@iex.ec>

RUN apt-get update && \
	apt-get install -y curl wget nano unzip python-pip && \
	apt-get -y autoremove && \
	rm -rf /var/lib/apt/lists/*

COPY FaceSwap-master.zip /FaceSwap-master.zip

RUN unzip FaceSwap-master.zip
RUN pip3 install -r /FaceSwap-master/requirements.txt

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
