#!/bin/bash

if [ ! -d $HOME/.supermodel ]; then
    mkdir -p $HOME/.supermodel/Analysis $HOME/.supermodel/Log $HOME/.supermodel/NVRAM
    cp -R /app/bin/Assets /app/bin/Config /app/bin/Docs $HOME/.supermodel
fi

/app/bin/supermodel "$@"

