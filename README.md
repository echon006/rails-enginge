# Rails-Engine Project: Turing 2110 BE Mod 3

## Background and Description

"Rails-Engine" is a solo project that requires students to build an API.
- Original Project requirements can be found [here](https://backend.turing.edu/module3/projects/rails_engine_lite/requirements).


## Learning Goals
- Strictly BE, setting up for FE to consume the API.
- Utilize advanced routing techniques including namespacing to organize and group like functionality together.
- Utilizes Postman test suits
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
$ rails db: {:drop, :create, :migrate, :seed}
```


* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
