# start.sh
docker_username=""
image_name="app"
container_name="web"
port=80

# remove container
echo "==> Remove Previous Container ..."
docker rm -f ${container_name}

echo "==> Remove Previous Image ..."
docker rmi -f ${image_name}

echo "==> Create New Image"
docker build -t ${image_name} -f Dockerfile .

echo "==> Run Container"
docker run -d -p ${port}:${port} --name ${container_name} ${image_name}