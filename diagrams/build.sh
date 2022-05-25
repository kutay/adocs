#!/bin/bash

trash-put *.png
trash-put *.svg


packetdiag *.diag
packetdiag -Tsvg  *.diag
