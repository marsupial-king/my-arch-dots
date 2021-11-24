#!/bin/bash

wal -i $HOME/Photos/wallpapers/
feh --bg-scale "$(< "${HOME}/.cache/wal/wal")"
