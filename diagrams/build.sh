#!/bin/bash

set -x 

trash-put *.png
trash-put *.svg


find -name "*.diag" -exec packetdiag {} \;
find -name "*.diag" -exec packetdiag -Tsvg {} \;


set +x
