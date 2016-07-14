# Version: beta2
FROM node:4
MAINTAINER Xie Di "xiedi@orientsoft.cn"
RUN apt-get update
RUN apt-get install -y libtool pkg-config build-essential autoconf automake uuid-dev
RUN git clone https://github.com/zeromq/libzmq
WORKDIR /libzmq
RUN ./autogen.sh
RUN ./configure
RUN make
RUN make install
RUN ldconfig
WORKDIR /
RUN npm config set registry https://registry.npm.taobao.org
RUN npm i -g gulp
RUN rm /etc/localtime
RUN ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
EXPOSE 19527
ENTRYPOINT ["node", "/conalog/bin/www"]
