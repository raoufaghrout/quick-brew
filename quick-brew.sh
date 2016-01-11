
#!/bin/sh

brew update;

brew upgrade --cleanup;

brew man;

brew prune;

brew cleanup --force -s;
