# Version: beta1
FROM node:4
MAINTAINER Xie Di "xiedi@orientsoft.cn"
RUN git clone https://github.com/zeromq/libzmq

RUN npm config set registry https://registry.npm.taobao.org 
RUN npm i -g gulp
RUN rm /etc/localtime
RUN ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
EXPOSE 19527
ENTRYPOINT ["node", "/conalog/bin/www"]
