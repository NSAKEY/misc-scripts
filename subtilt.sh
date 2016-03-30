#!/bin/sh

# The product of brainstorming in the Cryptoparty room at PhreakNIC 18.
# The original script by emptyset can be found here:
# https://gist.github.com/emptyset/551f82819c339fc6f0db
# Lightly modified by _NSAKEY.
# This script was tested on Debian Wheezy and FreeBSD 10.1-RELEASE with bash, csh, and sh.
# Example: ./subtilt.sh Teenage_Mutant_Ninja_Turtles.srt Friday.srt
# The above will give you an srt file with Friday's dialogue set to display at the set times from the TMNT srt file.

# separate times and words (grep and -v)
grep -E '^[0-9]+:[0-9]+:' $1 > $1.times
grep -Ev '^[0-9]+:[0-9]+:' $2 > $2.words

# apply the times to the text
# Removed the .srt at the end because it was creating files with .srt.srt extensions.
awk 'NR==FNR{a[i++]=$0;next;}{ if ($0 ~ /[0-9]+/) printf"%s\n%s\n", $0,a[j++];else print;}' i=1 j=1 $1.times $2.words > $1_vs_$2 

# add the counter
#awk '/[0-9]+\:/{printf("%d\n%s",++counter,$0);}{print $0;}' $1_vs_$2.srt &> $1_vs_$2-final.srt

# This just cleans up the temp files. Comment these out if you're debugging.
rm -rf $1.times
rm -rf $2.words
