
#!/bin/sh

brew update;

while getopts ":u" opt; do
  case $opt in
    u)
      echo "Upgrading recipes" >&2
      brew upgrade;
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done

brew cleanup -s;
