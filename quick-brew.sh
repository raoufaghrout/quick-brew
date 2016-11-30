
#!/bin/sh

brew update;

while getopts ":u" opt; do
  case $opt in
    u)
      echo "Upgrading recipes" >&2
      brew upgrade --cleanup;
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done

brew man;

brew prune;

brew cleanup --force -s;

brew cask cleanup;
