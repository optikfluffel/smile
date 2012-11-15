[![Build Status](https://secure.travis-ci.org/optikfluffel/smile.png?branch=master)](https://secure.travis-ci.org/optikfluffel/smile.png?branch=master)
[![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/optikfluffel/smile)

# Smile

This application was generated with the [rails_apps_composer](https://github.com/RailsApps/rails_apps_composer) gem provided by the [RailsApps Project](http://railsapps.github.com).

It's a simple Social Network for sending smiles to your friends and it should show what I can do.

## Setup the dependencies

*I assume you have [Ruby](http://www.ruby-lang.org/en/downloads), [Rubygems](http://rubygems.org/pages/download) and [bundler](http://gembundler.com) installed.*

Simply use ```bundle install``` to add all dependencies to your Gemset.

Now make sure you have [imagemagick](http://www.imagemagick.org) installed (*on a Mac I suggest using [homebrew](http://mxcl.github.com/homebrew) with ```brew install imagemagick```*) and you're ready to go.

## Database

Setup a Postgres database using the user *smile* and the password *12345* or change the ```config/database.yml``` to your needs.

## Development

* Template Engine: Haml
* Testing Framework: RSpec and Factory Girl and Cucumber
* Front-end Framework: Zurb Foundation
* Authentication: Devise

*My way* to develop is to start ```unicorn``` (<- yes you can simply type it in your terminal) as the webserver and run ```AUTOFEATURE=true autotest``` (<- same thing again) in a seperate window to see if I brake something instantly. Now you can open up [localhost:8080](http://localhost:8080) to watch the site, have an editor window next to it to change stuff and a little terminal window somewhere around to see if you brake existing stuff.

## License

DO WHATEVER THE FUCK YOU WANT, PUBLIC LICENSE
TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

0. You just DO WHATEVER THE FUCK YOU WANT.

## Edorsement

If you like it feel free to endorse me: [![](http://api.coderwall.com/optikfluffel/endorsecount.png)](http://coderwall.com/optikfluffel)
