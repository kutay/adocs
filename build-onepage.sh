#!/bin/bash

# github doesn't support "include::" so I'm concatening all the adocs into a single one

cat << EOF > unified-devops.adoc
= Docs
:toc: left
:sectanchors:
:source-highlighter: highlight.js
EOF
cat chapters/devops/*.adoc >> unified-devops.adoc
cat << EOF > unified-tools.adoc
= Docs
:toc: left
:sectanchors:
:source-highlighter: highlight.js
EOF
cat chapters/tools/*.adoc >> unified-tools.adoc


cat << EOF > rust.adoc
= Rust
:toc: left
:sectanchors:
:source-highlighter: highlight.js
EOF

cat rust/*.adoc >> rust.adoc


asciidoctor unified-devops.adoc
asciidoctor unified-tools.adoc
asciidoctor rust.adoc

asciidoctor readme.adoc