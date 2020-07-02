# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

How to test rate limit in development?

In terminal 
enter bash
bash-3.2$ for i in {1..8}; do curl -i http://localhost:3000/ >> /dev/null; done

bash-3.2$ less log/development.log | grep "200 OK" | wc -l
bash-3.2$ 4

bash-3.2$ less log/development.log | grep "429 Too Many Requests" | wc -l
bash-3.2$ 4 