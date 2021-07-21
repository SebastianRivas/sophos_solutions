# Sophos Solutions

Welcome to Sophos Solution Trips project!

## Setup

How to run the project:

+ Install the next dependencies:

1.postgresql
```
sudo apt-get install postgresql*
```
2.apache
```
sudo apt-get install apache2
```
3.ruby
```
sudo apt-get install ruby2.7
```
3.hanami
```
sudo gem install hanami
```
4.git
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

+ open the browser of your choice and enter the following IP address
```
http://127.0.0.1:2300/trip
```
