#!/bin/bash

dot -Tpng ecto_erd.dot -o erd.png
open erd.png
