kubectl create secret docker-registry regcred --docker-server=https://index.docker.io/v1/ --docker-username=titanomtechnologies --docker-password=DOCKER_PAT --docker-email=infrastructure@titanom.com
# Create env file for DGPT secrets
kubectl create secret generic deutschlandgpt-secret-env --from-env-file=.env
