#!/bin/bash

# github doesn't support "include::" so I'm concatening all the adocs into a single one

cat << EOF > unified.adoc
= Docs
:toc: left
:sectanchors:

EOF

cat chapters/*.adoc >> unified.adoc
