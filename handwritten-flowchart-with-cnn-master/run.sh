# conda evn: flowchart
# vgg16:https://github.com/fchollet/deep-learning-models/releases
# make sure  graphviz executables on your system path

step=$1

if [ $step = "init" ]
then
	echo "nv-tensorrt-repo-ubuntu1804-cuda10.2-trt8.2.0.6-ea-20210922_1-1_amd64.deb"
	os="ubuntu1804"
	tag="cuda10.2-trt8.2.0.6-ea-20210922"
	dpkg -i /data/Model/nv-tensorrt-repo-${os}-${tag}_1-1_amd64.deb
	apt-key add /var/nv-tensorrt-repo-${os}-${tag}/*.pub
	apt-get update
	apt-get install tensorrt -y
fi



if [ $step = "train_shape_model" ]
then
	cd model/
	python3 shape_model.py
fi

if [ $step = "inference" ]
then
	cd model/
	CUDA_VISIBLE_DEVICES=0 python3 shape_classifier.py /data/Dataset/16.jpg /data/Model/ 
fi
