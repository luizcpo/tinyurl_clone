# TinyURL Clone

This is a test assessment where the requirement was a simple clone of TinyURL.

## Assumptions

This is a very simple implementation that we call ShortLing. 
- We have used sqlite3 as a database to make it easy for anyone to build and run the project and for development time optimization.
- As in TinyURL, we give the user a simple way to provide a token for the URL to be shortten. But we generate one if the user does not provide one in the form. The use of 7 digit tokens provides us a number bigger than 70 billion tokens.
- The statistics are pretty simple as well, just a page with your statistics (match with the IP address) and an overall statistics regarding the URL represented by the token.

## Improvements
Here are things that I would like to do with a little more time:
- Create a docker-compose setup for migrating to postgresql and to ensure the same setup for growing teams.
- Improve the appearance of the pages with Bootstrap;
- Create some Rspec tests for quality and to ensure future modifications will not hurt the system's pre-existing features.
## Build Setup
Considering Ubuntu 20.04 LTS or later as an OS.
```bash
# install ruby
$ sudo apt install ruby

# install rails
$ gem install rails

# install gems related to the project
$ bundle install

# run the project on localhost:3000
$ rails s
```