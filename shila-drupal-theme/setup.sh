#!/usr/bin/env bash

drupalThemeRepo="https://github.com/aleksip/shila-drupal-theme"
starterkitRepo="http://github.com/aleksip/starterkit-shila-drupal-theme"
editionRepo="http://github.com/aleksip/edition-php-twig-standard"
editionBranch="shila-drupal-theme"
patternLabFolder="pattern-lab"
starterKitFolder="starterkit"

if [[ $1 ]]; then
	themeFolder="$1"
else
	themeFolder="drupal_theme"
fi

echo "==>cloning drupal theme..."
git clone $drupalThemeRepo $themeFolder
cd $themeFolder
echo "==="

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
git clone -b $editionBranch $editionRepo $patternLabFolder
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
