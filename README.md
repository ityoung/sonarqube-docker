## 项目描述

一键部署SonarQube静态代码分析平台，并将结果持久化在宿主机。

## 使用步骤

1. 修改`sonar-scanner.properties`中的`sonar.host.url`为你的docker宿主机 **IP:端口**
2. 安装docker-compose（安装教程请自行搜索）
3. 执行`docker-compose up`启动
4. 访问 **步骤1.** 配置的 IP:端口 进入SonarQube web管理平台

## 作者

联系： ityoung@foxmail.com

简书： [严北](https://www.jianshu.com/u/164741981042)
