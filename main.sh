#!/usr/bin/bash

#Rewrite this so that the test scripts themselves are sourced.
#But, still fork a process so we can change directories without
#messing up the other tests.
./common

function run_tests {
local test_dir="$1"
find ${test_dir} -name '*test_'  -maxdepth 1 -type d -print0 | while IFS= read -r -d '' dirname; do
    if [ "${dirname}" != '.' ]; then
	echo "# Running ${dirname}"
	printf "###################################################\n\n"
        (cd "${dirname}"; ./main.sh;)
	echo -n "${dirname}: "
	if [ $? -lt 1 ]; then
            echo "Test Succeeded."
	else
            echo "Test Failed."
        fi
	printf "\n\n"
    fi
done
}


run_tests ./tests



