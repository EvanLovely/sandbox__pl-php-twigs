This uses [aleksip/edition-php-drupal-standard: Pattern Lab Drupal Edition for Twig](https://github.com/aleksip/edition-php-drupal-standard). It will use the one from the `patternlab` org later

# Setup

		./setup.sh

Will set it up in a `pl/` folder - or you can pass in a folder to build it in: `./setup.sh path/to/folder`


**Caveats**: 

- You will be asked which starterkit you want to use; it doesn't matter.
- You will see a warning about a path already existing and if you should merge or replace the contents; it doesn't matter.
- The watch command does not work

### Commands

- `php core/console --generate` - compile site
- `php core/console --server` - create local server
