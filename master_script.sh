#./master_script.sh collection_name mongo_db_name mongo_username mongo_password mongo_host mongo_port
couchbackup --db $1 > 1.json
./couch_to_mongo.sh 1.json
mongoimport --host $5 --port $6 --db $2 -u $3 -p $4 --collection $1 --drop --file 1.json
rm *.json