Unit testing framework for Bash shell scripts.
It is functional, but in a very alpha state right now.
Use at your own discretion.

To use this framework, first create a directory in the repo called "tests".
Then, for each of your test cases, first, create a directory under "tests"
with a name in the following format

test_<test_case_name>

Then, within this directory, create a "main.sh" script
containing the logic of your test case. Don't forget
to source the "common" script included inorder to incorporate
the framework.  Additionally, be sure to include everything you
need to provide proper input to your script under test within the
test directory.

Of course, each "main.sh" can be executed individually, but if you
want to run all the tests, run the "main.sh" in the repo root
directory.
