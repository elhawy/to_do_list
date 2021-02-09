<p align="center"><h1>To Do List</h1></p>

## About To do List

Application “Simple to do list rest api” `using laravel framework`
Each item in the list has: description, status, category. The category is not required.
User needs to be able to track the amount of time he spent on each item.
He can start tracking and stop tracking of an item time.
Once he starts an item he can't start tracking another one till he finishes the first one.

## Step 1 Up and running
Clone the repo:
```
$ git clone https://github.com/elhawy/to_do_list.git
$ cd to_do_list
```
## Step 3
Copy `.env.example` to `.env`
```
$ cp .env.example .env 
```
Run 
```
$ composer install
$ php artisan key:generate
```
# Database
#### Database import file
    import mysql db file `todolist.sql` on this repository
    or create databse with name to_do_list
#### Via Docker 
run
```
docker-compose build
sudo docker-compose up -d
```
you must see this
``` 
Creating network "to_do_list_default" with the default driver
Creating to_do_list_app_1 ... done
Creating mysql-db         ... done
```
then run
``` docker ps ```
choose mysql container
```
CONTAINER ID   IMAGE        COMMAND                  CREATED              STATUS              PORTS                  NAMES
fc17d00a2d7b   mysql:5.7    "docker-entrypoint.s…"   About a minute ago   Up About a minute   3306/tcp, 33060/tcp    mysql-db
6b6321bfc48e   laravelapp   "docker-php-entrypoi…"   About a minute ago   Up About a minute   0.0.0.0:8080->80/tcp   to_do_list_app_1

```
then run
``` 
mysql -u root -p
```
use this password
``` 
securerootpassword
```
create database
```
create databse to_do_list;
exit;  
```
### Step 4
after create your database and run the following command.
$ php artisan migrate
$ php artisan db:seed
```
seed command will create the first user as no endpoint to register user
database/seed contain seeder class to generate data as you want seeder for category , user and item
```
### Step 5
finally, you can run simple test case to make sure every thing working correctly
`$ ./vendor/bin/phpunit --migrate-configuration`   small test case to make sure every thing is work correctly
### Finally, Export Report
You can export report via endpoint 
you can specify which format you want via query params: *type* `v1 or v2`
you can check http request for export report to know its params `App\Http\Requests\ExportReportRequest`
```
    `{baseurl}api/items/export?type=v1&from=2018-02-07 19:44:49&to=2021-02-06 19:44:49&group_by=month`

