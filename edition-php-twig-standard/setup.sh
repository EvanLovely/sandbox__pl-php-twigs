#!/usr/bin/env bash

if [[ $1 ]]; then
	themeFolder="$1"
else
	themeFolder="pl"
fi

composer create-project pattern-lab/edition-twig-standard $themeFolder
cd $themeFolder

