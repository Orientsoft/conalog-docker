# conalog-docker
# Depoly
Suppose ./ = /home/voyager/xd/docker/conalog-front/  
```  
git clone https://github.com/Orientsoft/conalog.git  
cd conalog  
vim config/config.js: conalogHost/Port - set to user browsing address  
npm i  
gulp install  
gulp compile  
sudo docker run --hostname conalog-front --name conalog-front -p 9527:9527 -v /home/voyager/xd/docker/conalog-front/conalog-front:/conalog-front --link conalog --link mongo --link redis -d xiedidan/conalog-front  
```  
