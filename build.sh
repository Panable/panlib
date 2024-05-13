#!/bin/sh

set -xe

CC=cc
LIBS="-lc -lncurses -lcjson"
CFLAGS="-Wall -Wextra -std=c11 -pedantic -ggdb"
SRC="src/main.c src/pl_utils.c"
MACROS="-DPL_LOGGING"

bear -- $CC $CFLAGS $MACROS -o build/panlib $SRC $LIBS
