# komo-docker
komo 工具docker 化使用
* clone [komo](https://github.com/komomon/Komo)到komo目录下
```
git clone https://github.com/komomon/Komo.git
```
* clone Dockerfile文件到本地Komo目录
* 本地构建
```
docker build -t komo-docker .
```

---
# 直接pull镜像
* 拉取镜像
```
docker pull vvwwq/komo-docker-1
```
* 进入docker，修改配置文件
```
docker run -it --name komo-docker vvwwq/komo-docker-1 /bin/bash
```
* 根据komo说明文件使用

