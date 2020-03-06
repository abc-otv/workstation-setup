echo 'Installing postgresql'
brew install postgresql
echo 'Enter the postgres password:'
read -p POSTGRES_PASSWORD
echo "export PGPASSWORD=${POSTGRES_PASSWORD}" >> ~/.bash_profile
source ~/.bash_profile
docker pull postgres

