#!/bin/bash

mkdir -p $HOME/.supermodel/Analysis $HOME/.supermodel/Log $HOME/.supermodel/NVRAM $HOME/.supermodel/Config $HOME/.supermodel/Assets
# Only copy Games.xml, this file isn't expected to be edited by users.
cp /app/bin/Config/Games.xml $HOME/.supermodel/Config
cp -R /app/bin/Docs $HOME/.supermodel
# Users can add custom assets to this folder, only copy contents instead of copying the entire folder.
cp -R /app/bin/Assets/* $HOME/.supermodel/Assets

if [ ! -f $HOME/.supermodel/Config/Supermodel.ini ]; then

    cp /app/bin/Config/Supermodel.ini $HOME/.supermodel/Config

fi

/app/bin/supermodel "$@"

