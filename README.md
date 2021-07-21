# Sophos Solutions

Welcome to Sophos Solution Trips project!

## Setup the app

How to run the project:

# Install the next dependencies:

+ postgresql
```
sudo apt-get install postgresql*
```
+ apache
```
sudo apt-get install apache2
```
+ ruby
```
sudo apt-get install ruby2.7
```
+ hanami
```
sudo gem install hanami
```
+ git
```
sudo apt-get install git
```

+ Update gems
```
sudo gem update
```

+ Prepare the database
```
sudo -u postgres psql

CREATE ROLE sophos LOGIN CREATEDB PASSWORD 'Wrgqx8xntd';
```

+ Install app
```
git clone https://github.com/SebastianRivas/sophos_solutions.git

cd sophos_solutions

bundle install
```

+ Setup the database
```
bundle exec hanami db prepare
```

+ Run seeders
```
psql -f seeder.sql sophos_development_db
```

+ Run the app
```
bundle exec hanami server
```

+ Open the browser of your choice and enter the following IP address
```
http://127.0.0.1:2300/trip
```

## Run the test
