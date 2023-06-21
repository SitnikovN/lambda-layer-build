container_name=layers_docker_container
image_name=layers_build_image

docker build -t $image_name .
docker run -td --name=$container_name $image_name
docker cp ./requirements.txt $container_name:/
docker cp ./docker_install.sh $container_name:/
docker exec -i $container_name sh -c "./docker_install.sh"

docker cp $container_name:/python.zip python.zip
docker stop $container_name
docker rm $container_name