<%!
    import pydmt.helpers.git
%>${"##"} Number of examples

Currently there are ${pydmt.helpers.git.count_files("src/**/*.bash")} examples in this repo.

# How to run examples from this repository?

	$ ./src/examples/core/booleans/booleans.bash
