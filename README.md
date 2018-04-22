# docker-laravel
Dead simple Laravel docker-compose set up for quick local dev/testing with Nginx/MySQL. **NOT** to be used for production in this state, but could be adapted as such.

##Set Up
90% of the set up is automatic. Just run `sh setup.sh` from a blank project directory.
Laravel sits inside `./{project_name}/laravel`. Update your `.env` with the below default settings.

MySQL Connection
---
Notice that the DB_PORT points to 33061, which is a host(Your Computer) mapping to our internal container port of 3306. We map it slightly different to stop any conflicts which might already be running on your host. 

Additionally notice the **DB_HOST** point to **127.0.01** (localhost) you can also use **"mysqldb"** which is our service name. See docker-compose.yml if you are confused.

APP_URL=http://localhost:8080 
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=33061
DB_DATABASE=app
DB_USERNAME=app
DB_PASSWORD=password
---

The above details are dependent on the docker-compose file. You can adjust the settings under `mysqldb.evironment` per project. If you do this be sure to run `docker-compose build` to pull in your new configurations.

**Run in projects root directory:**
`docker-compose exec app php artisan key:generate`
Note: Create an alias in ~/.bash_profile  `alias phpd="docker-compose exec app php"` which will allow you to run `phpd artisan`. For those changes to take affect run `source ~/.bash_profile` or restart terminal.

When you're finished developing you can run: `docker-compose down` to remove all containers.


**Notice:** This has been developed solely for my own use, however I welcome anyone who wishes to use this or give advice. Just be aware its a work in progress and its advised for local/dev and testing only and requires basic Docker knowledge before use.

Cheers, Tom. :beers:




