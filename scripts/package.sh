set -e
cd ${WORKDIR:-}
echo "Adding dependancies..."
apk add zip curl

echo "Install AWS CLI..."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install
echo "Upload packages..."
/usr/local/bin/aws --version
/usr/local/bin/aws s3 ls
echo "Packageing package_layer..."
mkdir -p ~/.tmp/package_layer
mkdir -p ~/packages/package_layer/python/common
mkdir -p ~/packages/python/common
mkdir -p ~/packages/lambda_functionsunzip awscliv2.zip