# mise a jour des dockers
docker pull glemer/wt_db:latest

# download docker-compose
curl -o docker-compose.yml https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/INTERNE/docker-compose.yml
# download DB files
curl -o sql-scripts/CreateTable.sql https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/database/sql-scripts/CreateTable.sql
curl -o sql-scripts/InsertData.sql https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/database/sql-scripts/InsertData.sql
curl -o sql-scripts/db-init.sql https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/database/sql-scripts/db-init.sql