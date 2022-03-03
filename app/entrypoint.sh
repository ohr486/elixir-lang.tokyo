#!/bin/sh -eux
# shellcheck shell=dash

if test "$(stat /.dockerenv > /dev/null || echo $?)" ; then
  : "Outside Docker"
  mix "do" deps.get, deps.compile sentry --force, compile
  mkdir -p _build/.mix
else
  : "Inside Docker"
  # rsync -au /tmp/_build /tmp/deps .
  mix "do" deps.get, deps.compile sentry --force, compile
fi
(cd assets && npm install && node node_modules/webpack/bin/webpack.js --mode development)
(cd api/generator && npm install && npm run build)
