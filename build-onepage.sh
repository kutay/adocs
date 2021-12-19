#!/bin/bash

# github doesn't support "include::" so I'm concatening all the adocs into a single one

cat << EOF > unified.adoc
= Docs
:toc: left
:sectanchors:
:source-highlighter: highlight.js
EOF

cat chapters/*.adoc >> unified.adoc


cat << EOF > rust.adoc
= Rust
:toc: left
:sectanchors:
:source-highlighter: highlight.js
EOF

cat rust/*.adoc >> rust.adoc


asciidoctor unified.adoc
asciidoctor rust.adoc

asciidoctor readme.adoc