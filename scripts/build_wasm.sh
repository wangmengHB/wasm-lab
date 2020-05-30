#!/bin/sh


path=$(pwd);

if [  `echo $path | grep "\/scripts"` ];then
  echo "根目录下执行脚本"
else
  emcc \
  c/ff_base/base.c \
  c/hello.c \
  -lavformat -lavcodec  -lswscale  -lavutil \
  -Llibs-wasm/lib -Ilibs-wasm/include -Ic/ff_base \
  -Os --closure 1 \
  -s MODULARIZE=1 \
  -s EXPORT_NAME=m \
  -s ALLOW_MEMORY_GROWTH=1 \
  -s TOTAL_MEMORY=16777216 \
  -s EXPORTED_FUNCTIONS='["_init"]' \
  -s EXTRA_EXPORTED_RUNTIME_METHODS='["addFunction"]' \
  -s RESERVED_FUNCTION_POINTERS=20 \
  -o dist/decoder.js
fi