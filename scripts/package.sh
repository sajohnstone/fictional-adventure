set -e
cd ${WORKDIR:-}
echo "Adding dependancies..."
apk add zip curl
echo "Install AWS CLI..."
python -m pip install awscli
echo "Upload packages..."
aws --version
echo "Packageing package_layer..."
mkdir -p ~/.tmp/package_layer
mkdir -p ~/packages/package_layer/python/common
mkdir -p ~/packages/python/common
mkdir -p ~/packages/lambda_functionsunzip awscliv2.zip