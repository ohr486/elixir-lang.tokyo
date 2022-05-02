#!/bin/bash

dot -Tpng ecto_erd.dot -o erd.png
cp erd.png ../tmp/
open erd.png
