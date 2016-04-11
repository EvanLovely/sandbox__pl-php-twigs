This uses [pattern-lab/edition-php-twig-development: Pattern Lab Development Edition for Twig](https://github.com/pattern-lab/edition-php-twig-development)

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

# Differences between this edition and the "standard" edition

This keeps all sub-components as git repos so you can work on them; the standard removes the `.git/` folder. To work on new features, change branches or remotes on the sub-components as necessary.