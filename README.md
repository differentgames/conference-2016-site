# Different Games Conference 2016 website

<marquee>YOU KNOW IT... YOU LOVE IT...</marquee>

## Getting started
Install Jekyll: http://jekyllrb.com/

Then, you can run the command `jekyll serve` from a command line. You should
be able to open your browser to http://localhost:4000 and see the site. As
long as the `jekyll serve` process is still running, you can edit files in
this project and generally just go bananas, the process will regenerate
files as necessary, and you'll be able to see your changes at http://localhost:4000.

:boom: :zap: :fireworks:

## Deploying
TODO: Continuous integration

Until we get an automagical deploy process worked out, you can deploy manually.
Copy the `.ftp_config.sample` file into a file named `.ftp_config`, then edit the
variables in the `.ftp_config` file as appropriate. Then you can run `./deploy.sh`
from the root of this project, and it will build and sync your site to the remote
FTP server.

_Note:_ the `deploy.sh` script assumes you have bash installed on your
computer. Linux and OSX folks should be fine. Windows folks may need to have Cygwin
installed or something.
