#!/bin/sh

touch lib/poetry-bug/generated.py
poetry build
zipinfo dist/poetry_bug-0.1.0*.whl
