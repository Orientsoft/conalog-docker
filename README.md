# conalog-docker
# Depoly
Suppose ./ = /home/voyager/xd/docker/conalog/  
Also suppose you have prepared a mongodb docker container named 'mongo' and a redis docker container named 'redis'.  
```  
git clone https://github.com/Orientsoft/conalog.git  
cd conalog  
vim config/config.js  
npm i  
gulp install  
gulp go  
sudo docker run --hostname conalog --name conalog -p 19527:19527 -v /home/voyager/xd/docker/conalog/conalog:/conalog --link mongo --link redis -d xiedidan/conalog
```  
# config.js Description
```  
var config = {
  logLevel: 'info', (may be debug, info, warning, error)
  conalogHost: '192.168.0.230', (set to user browser address)
  conalogPort: 19527,
  conalogFrontHost: '192.168.0.230', (set to user browser address)
  conalogFrontPort: 9527,
  mongoUrl: 'mongodb://mongo:27017/conalog', (don't touch this if you use docker)
  redisUrl: 'redis://redis:6379', (don't touch this if you use docker)
  activeCollectorPrefix: 'ac_', (default Redis channel for active collector is 'ac_[YOUR_ACTIVE_COLLECTOR_NAME]')
  passiveCollectorPrefix: 'pc_', (default Redis channel for passive collector is 'ac_[YOUR_PASSIVE_COLLECTOR_NAME]')
  apiGatewayHost: 'apigateway', (API Gateway related, reserved, not used for now)
  apiGatewayPort: 1234,
  apiGatewayToken: '12345',
  apiGatewayUid: '67890',
  apiGatewayType: 'user',
  auth: { (auth list for passive collector, only hosts defined here could be used by passive collector)
    '127.0.0.1': { username: 'voyager', password: 'welcome1' } (if you use docker, 127.0.0.1 points to current container)
  }
}

module.exports = config;
```  
