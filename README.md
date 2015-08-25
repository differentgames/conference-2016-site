# Different Games Conference 2016 website

<marquee>YOU KNOW IT... YOU LOVE IT...</marquee>

## Getting started
Install Ruby and Bundler on your system (https://github.com/postmodern/ruby-install, http://bundler.io/).

Install all the gems required by this project by running `bundle install` from
the root of the project.

Then, you can run the command `bundle exec jekyll serve` from a command line. You should
be able to open your browser to http://localhost:4000 and see the site. As
long as the `bundle exec jekyll serve` process is still running, you can edit files in
this project and generally just go bananas, the process will regenerate
files as necessary, and you'll be able to see your changes at http://localhost:4000.

:boom: :zap: :fireworks:

## Deploying
It will happen automagically when you make commits to the master branch!

[![Circle CI](https://circleci.com/gh/differentgames/conference-2016-site/tree/master.svg?style=svg)](https://circleci.com/gh/differentgames/conference-2016-site/tree/master)

If you need to deploy manually, you can. (But try not to!)
Copy the `.ftp_config.sample` file into a file named `.ftp_config`, then edit the
variables in the `.ftp_config` file as appropriate. Then you can run `./deploy.sh`
from the root of this project, and it will build and sync your site to the remote
FTP server.

_Note:_ the `deploy.sh` script assumes you have bash installed on your
computer. Linux and OSX folks should be fine. Windows folks may need to have Cygwin
installed or something.
