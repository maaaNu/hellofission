export FISSION_URL=http://$(minikube ip):31313
export FISSION_ROUTER=$(minikube ip):31314
export APP_NAME=hello

fission fn delete --name $APP_NAME
fission route delete --name $(fission route list | grep hello|cut -f1 -d' ')
