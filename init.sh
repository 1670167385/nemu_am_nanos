#!/bin/bash

version=ics2021

function init() {
  if [ -d $1 ]; then
    echo "$1 is already initialized, skipping..."
    return
  fi

  if [ $2 ] ; then
    sed -i -e "/^export $2=.*/d" ~/.bashrc
    echo "export $2=`readlink -e $1`" >> ~/.bashrc

    echo "By default this script will add environment variables into ~/.bashrc."
    echo "After that, please run 'source ~/.bashrc' to let these variables take effect."
    echo "If you use shell other than bash, please add these environment variables manually."
  fi
}

function init_no_git() {
  if [ -d $1 ]; then
    echo "$1 is already initialized, skipping..."
    return
  fi

  sed -i -e "/^\/$1/d" .gitignore
  echo "/$1" >> .gitignore

  
 }

case $1 in
  nemu)
    init nemu NEMU_HOME
    ;;
  abstract-machine)
    init abstract-machine AM_HOME
    init_no_git fceux-am
    ;;
  am-kernels)
    init_no_git am-kernels
    ;;
  nanos-lite)
    init nanos-lite
    ;;
  navy-apps)
    init navy-apps NAVY_HOME
    ;;
  *)
    echo "Invalid input..."
    exit
    ;;
esac
