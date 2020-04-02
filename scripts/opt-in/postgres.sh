echo 'Installing postgresql'
brew install postgresql
/usr/local/opt/postgres/bin/createuser -s postgres

echo 'Enter the postgres password:'
read -p POSTGRES_PASSWORD
echo "export PGPASSWORD=${POSTGRES_PASSWORD}" >> ~/.bash_profile
source ~/.bash_profile
docker pull postgres

