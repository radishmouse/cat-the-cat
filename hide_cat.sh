#!/usr/bin/env bash

# The directory that holds all of the 
# possible hiding places.
places=hiding_places

# Clean up any old hiding places.
if [ -d "$places" ]; then
	rm -rf "$places"
fi

mkdir "$places" # Use the value stored in 
                # the `places` variable.

# We want to create 10 hiding places.
# So, we'll use a loop to count up.
for i in {0..9}
do
  # The `mktemp` command generates a random
  # directory name.
  DIRNAME=`mktemp -d "$places/.XXX"`
  # We only want a single hidden cat.
  if test $i == 1
  then
    # Put the output of `draw_cat.sh`
    # into a file (instead of printing).
    ./draw_cat.sh > $DIRNAME/cat.txt
  else
    # All the others are decoys.
    echo 'no cat here!\n' > $DIRNAME/cat.txt
  fi
done
