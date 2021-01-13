# poetry-bug
Demonstrates what I think is a bug in poetry's building of wheels.

The bug.sh script generates the file lib/poetry-bug/generated.py, which is gitignored because it represents a file generated at build time. Since it should still go in the binary distribution, we include it in the package with an include directive in pyproject.toml.

After building with poetry, we run zipinfo to inspect the wheel. Observe that the generated file ends up in the path lib/poetry-bug/generated.py, while the rest of the package has lib/ removed. 
