export FISSION_URL=http://$(minikube ip):31313
export FISSION_ROUTER=$(minikube ip):31314
export APP_NAME=hello

fission fn create --name $APP_NAME --env python --code hello.py --url /$APP_NAME --method GET
