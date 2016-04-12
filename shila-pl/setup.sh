#!/usr/bin/env bash

starterkitRepo="http://github.com/aleksip/starterkit-shila-drupal-theme"
editionRepo="https://github.com/aleksip/edition-php-drupal-standard"
patternLabFolder="pattern-lab"
starterKitFolder="starterkit"

if [[ $1 ]]; then
	themeFolder="$1"
else
	themeFolder="pl"
fi

mkdir $themeFolder
cd $themeFolder

echo "==>cloning starterkit..."
git clone $starterkitRepo $starterKitFolder
cd $starterKitFolder
echo "==="

echo "==>installing starterkit deps..."
npm install
bower install
cd ..
echo "==="

echo "==>cloning pattern lab edition..."
git clone $editionRepo $patternLabFolder
cd $patternLabFolder
echo "installing pattern lab deps..."
composer install
echo "==="

echo "In the file \"$patternLabFolder/config/config.yml\" change sourceDir and twigAutoescape like so:"
echo "sourceDir: ../$starterKitFolder/dist"
echo "twigAutoescape: false"
echo ""
echo "If everything went well you should now be able to generate the static Pattern Lab site. In the $patternLabFolder directory run:"
echo "php core/console --generate"
