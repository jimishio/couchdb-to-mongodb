#./master_script_without_pwd.sh collection_name mongo_db_name mongo_host mongo_port
couchbackup --db $1 > 1.json
./couch_to_mongo.sh 1.json
mongoimport --host $3 --port $4 --db $2 --collection $1 --drop --file 1.json
rm *.json