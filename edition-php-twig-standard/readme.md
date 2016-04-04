This uses [pattern-lab/edition-php-twig-standard: Pattern Lab Standard Edition for Twig](https://github.com/pattern-lab/edition-php-twig-standard)

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
