# nodew

Simple [NVM](https://github.com/creationix/nvm "NVM") wrapper that installs node and provides binary wrappers.

## Installation
1. Copy this entire project into your project. The default name of nodew is expected.
2. Copy .nodewrc into the directory containing your nodew directory.
3. Edit .nodewrc to reflect your dependency versions.

## Usage
The anticipated usage would be to first pull these scripts into your project and leave them in a nodew directory. From there all assocaited node tasks will run through either the nodew script itself or through the convenience node and npm wrappers.

### nodew.sh
Wrapper around cl executable commands. Command are executed against the configured node environment.

`nodew.sh gulp build`

### npm.sh
Wrapper around the installed node.js binary. Works just like native node.

`npm.sh install`

### node.sh
Wwrapper around the installed npm binary. Works just like native npm.

`node.sh run`
