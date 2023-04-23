cd /opt/docker
docker build -t $JOB_NAME:v1.$BUILD_ID .
docker tag $JOB_NAME:v1.$BUILD_ID sunnydevops2022/$JOB_NAME:v1.$BUILD_ID
docker tag $JOB_NAME:v1.$BUILD_ID sunnydevops2022/$JOB_NAME:latest
docker push sunnydevops2022/$JOB_NAME:v1.$BUILD_ID
docker push sunnydevops2022/$JOB_NAME:latest
docker rmi $JOB_NAME:v1.$BUILD_ID sunnydevops2022/$JOB_NAME:v1.$BUILD_ID sunnydevops2022/$JOB_NAME:latest
