#!/usr/bin/env bash

cat slides/*.md > presentation.md.out && presenterm -x --publish-speaker-notes ./presentation.md.out
