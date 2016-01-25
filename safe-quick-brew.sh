
#!/bin/sh

sudo chown -R $(whoami):admin /usr/local

brew update;

brew man;

brew prune;

brew cleanup --force -s;
