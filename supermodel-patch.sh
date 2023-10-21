#!/bin/bash

mkdir -p $HOME/.supermodel/Analysis $HOME/.supermodel/Log $HOME/.supermodel/NVRAM $HOME/.supermodel/Config
cp /app/bin/Config/Games.xml $HOME/.supermodel/Config
cp -R /app/bin/Assets /app/bin/Docs $HOME/.supermodel

if [ ! -f $HOME/.supermodel/Config/Supermodel.ini ]; then

    cp /app/bin/Config/Supermodel.ini $HOME/.supermodel/Config

fi

/app/bin/supermodel "$@"

