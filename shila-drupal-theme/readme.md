This uses [aleksip/shila-drupal-theme: An atomic design and Pattern Lab friendly starting point for new Drupal 8 themes](https://github.com/aleksip/shila-drupal-theme)

# Setup

		./setup.sh

Will set it up in a `drupal_theme` folder - or you can pass in a folder to build it in: `./setup.sh path/to/folder`


Afterwards in the file `pattern-lab/config/config.yml` change `sourceDir` and `twigAutoescape` like so:
    
    sourceDir: ../starterkit/dist
    twigAutoescape: false


**Caveats**: 

- The watch command does not work

### Commands

- `php core/console --generate` - compile site
- `php core/console --server` - create local server
