#!/bin/bash

# install ruby if not already installed
DIR=$(which ruby)

DIR=$(dirname $DIR)

echo $DIR

if [ ! -d $DIR 2>/dev/null ]; then
  echo "Ruby doesn't exist. We install them"
  echo "Input SUDO password for install:"
  sudo apt-get install ruby   
fi
ruby -v

# Install a gems dependencies on the system
listofgems="colorize json rspec bundler artii"
version=0.8.1 
for name in $listofgems;
do
echo  $name
installed=`gem list -i $name`

if [ $installed = 'true' ]; then
  echo gem exists: $name
else
 echo gem install $name
 gem install $name
fi
done

echo "Launching App..."
ruby index.rb