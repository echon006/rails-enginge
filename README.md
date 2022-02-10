# Rails-Engine Project: Turing 2110 BE Mod 3

## Background and Description

"Rails-Engine" is a solo project that requires students to build an API.
- Original Project requirements can be found [here](https://backend.turing.edu/module3/projects/rails_engine_lite/requirements).


## Learning Goals
- Strictly BE, setting up for FE to consume the API.
- Utilize advanced routing techniques including namespacing to organize and group like functionality together.
- Utilizes Postman test suites
- Using Serializers to format JSON responses

## Requirements and Setup (for Mac):

### Ruby and Rails
- Ruby Version 2.7.2
- Rails Version 5.2.6

### Gems Utilized
- RSpec-rails
- Pry
- SimpleCov
- Shoulda-Matchers v5.0
- Factory_Bot_Rails
- Faker
- JSONAPI Serializer

## Setup
1. Clone this repository:
On your local machine open a terminal session and enter the following commands for SSH or HTTPS to clone the repositiory.


- using ssh key <br>
```shell
$ git clone git@github.com:echon006/rails-enginge.git
```

- using https <br>
```shell
$ git clone https://github.com/echon006/rails-enginge.git
```

Once cloned, you'll have a new local copy in the directory you ran the clone command in.

2. Change to the project directory:<br>
In terminal, use `$cd` to navigate to the Rails-Engine project directory.

```shell
$ cd rails-engine
```

3. Install required Gems utilizing Bundler: <br>
In terminal, use Bundler to install any missing Gems. If Bundler is not installed, first run the following command.

```shell
$ gem install bundler
```

If Bundler is already installed or after it has been installed, run the following command.

```shell
$ bundle install
```


4. Database Migration<br>
Before using the web application you will need to setup your databases locally by running the following command

```shell
$ rake db:{drop,create,migrate,seed}
```
then
```shell
$ rails db:schema:dump
```
- You can do the following to check to see if you have set up rails to effectively communicate with the database.
Add a customer.rb file to your models directory
- Create a Customer class that inherits from ApplicationRecord
- run rails c to jump into your rails console.
- run Customer.first to see the object: #<Customer id: 1, first_name: "Joey", last_name: "Ondricka", created_at: "2012-03-27 14:54:09", updated_at: "2012-03-27 14:54:09">
- run Customer.last to see the object: #<Customer id: 1000, first_name: "Shawn", last_name: "Langworth", created_at: "2012-03-27 14:58:15", updated_at: "2012-03-27 14:58:15">
- If this all checks out you should be good to go.


## Endpoints
Endpoints available for this API.

1. Merchants
- To retrieve all Merchants<br>
http://localhost:3000/api/v1/merchants
- To retrieve one Merchant<br>
http://localhost:3000/api/v1/merchants/{{merchant_id}}
- To retrieve a Merchant's Items<br>
http://localhost:3000/api/v1/merchants/{{merchant_id}}/items
- To retrieve a Merchant based on a search(by name)<br>
http://localhost:3000/api/v1/merchants/find?name={{keyword}}


2. Items
- To retrieve all Items<br>
http://localhost:3000/api/v1/items
- To retrieve one Item<br>
http://localhost:3000/api/v1/items/{{item_id}}
- To retrieve an Item's Merchant<br>
http://localhost:3000/api/v1/items/{{item_id}}/merchant
- To retrieve all items based on a search(by name)<br>
http://localhost:3000/api/v1/items/find_all?name={{keyword}}

- Create and update function also available for Items
