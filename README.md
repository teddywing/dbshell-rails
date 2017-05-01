dbshell-rails
=============

A Rake task to launch a database shell, using the connection parameters
specified in your Rails application. The shell will be automatically connected
to the current environment's database.

The following databases are supported:

* PostgreSQL (runs `psql`)
* MySQL (runs `mysql`)
* SQLite (runs `sqlite3`)

After being a Djangonaut for a while and then doing more work in Rails, I was
surprised that it apparently has no equivalent to Django's
`./manage.py dbshell` command. This launcher program aims to provide that
missing functionality.


## Usage

	$ rake dbshell
	example_app_development=#

	$ rails dbshell
	example_app_development=#

	$ RAILS_ENV=test rake dbshell
	example_app_test=#


## Installation

Add this line to your application's Gemfile:

``` ruby
gem 'dbshell-rails'
```

And then execute:

	$ bundle

Or install it yourself with:

	$ gem install dbshell-rails


## License
Licensed under the MIT License. See the included LICENSE.txt file.
