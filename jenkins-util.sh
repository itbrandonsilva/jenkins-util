#!/bin/bash

set -e;
case "$1" in


"clone")
    echo "Cloning...";
    rm -rf $3;
    git clone $2 $3;
    echo "Cloning complete.";
    ;;


"install")
    echo "Deploying...";
    bash ./$2/jenkins/install.sh;
    echo "Deployment succesful.";
    ;;


"test")
    echo "Testing...";
    bash ./$2/jenkins/test.sh;
    echo "Tests succesful.";
    ;;


"start")
    echo "Starting...";
    bash ./$2/jenkins/start.sh;
    echo "Running.";
    ;;


*)
    echo ERROR \> jenkins-util.sh: Invalid arg: \"$1\";
    exit 1;
    ;;


esac

exit 0;
