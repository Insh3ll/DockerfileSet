使用以下命令从映像运行容器：

```
docker-compose build 
docker-compose up -d 

```
用户名密码：`admin@admin.admin : administrator`

如果这是第一次运行，那么starup将会抛出一个警告，因为arachni_production数据库还没有被设置，arachni_web_task db:setup这也意味着webui将无法加载。要解决此问题，请运行以下命令：

docker exec -i /opt/arachni/bin/arachni_web_task db:setup arachni

注意：请谨慎使用上面的命令。它旨在设置一个干净的和默认的数据库。如果你的数据库中有扫描数据并运行这个命令，它将被删除！