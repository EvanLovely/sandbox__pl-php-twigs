#!/usr/bin/env bash

if [[ $1 ]]; then
	themeFolder="$1"
else
	themeFolder="pl"
fi

git clone https://github.com/aleksip/edition-php-drupal-standard $themeFolder
cd $themeFolder
composer install
