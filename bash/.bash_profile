#!/bin/sh

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

source $HOME/.cargo/env
export PATH="$HOME/.cargo/bin:$PATH"
