# Grafff

Grafff is an online platform for the street art community. It allows people to follow their favourite street artists, keep track of new and old work and know where to find it.

This was my final project I built while completing General Assembly's [Web Development Immersive](https://generalassemb.ly/education/web-development-immersive) course.

The challenges I set for myself in this project were to use AngularJS (completely new territory for me at the time), Rails as the API, and to try and limit the amount of helper libraries and plugins for functionality – create things manually, with the aim of learning as much as possible.

## Built with
* AngularJS v1.3.15
* Ruby v2.1.4
* Rails v4.2.0
* PostgreSQL

## Setup
To run this app locally, first clone the repository to your machine:

```
$ git clone https://github.com/mathewhawley/grafff.git
```
Go into the new directory, make sure you have PostgreSQL running and type in the following commands into your terminal:

```
$ rake db:create
$ rake db:migrate
$ rake db:seed
```
Next, run a `bundle install` to install the necessary gems.

Finally type in `rails s` to start the server.

This project uses the _Thin_ Ruby web server, which defaults to port 3000. Open your browser and navigate to: http://localhost:3000.

## Demo
You can visit the live site [here](http://grafff.herokuapp.com) — _best viewed in Chrome_.
