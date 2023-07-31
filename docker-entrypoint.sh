#!/bin/bash
set -e

if [ "$PHP_MODULES" != "" ]; then
  for module in $PHP_MODULES; do
    docker-php-ext-enable "$module"
  done
fi

# Run
exec "$@"
