#!/bin/bash

# splitlen-extra by _NSAKEY
# This is a re-implementation of spl splitlen from hashcat-utils in bash.
# which can be found here:
# https://hashcat.net/wiki/doku.php?id=hashcat_utils
# As of version 1.0, splitlen allow up to 64 char passes, and you can recompile
# splitlen to deal with longer passes. In other words, there isn't much of a need
# for this script to exist, but I wrote it anyway.
# This script also takes orders of magnitude longer to run. Don't use it.

# Everything beyond this point is as it appears in the original, found here:
# https://gist.github.com/NSAKEY/4d70404bf258d3a40c89

# Usage: ./splitlen.sh wordlist.dict dictionary-folder
# $1 is the name of your dictionary and $2 is the name of the folder for the
# output.

# BEGIN EXTENSIVE DOCUMENTATION

# The script just extracts every line that meets a certain length from the
# word list and dumps it in the appropriate file.  The rationale for doing
# all of this in the first place can be found here:
# http://hashcat.net/wiki/doku.php?id=oclhashcat#dictionary_loading

# I dislike the fact that splitlen truncates all > 15 character passes but
# also understand why the hashcat team made that design decision. The
# original version used cat instead of strings, but the script kept dying
# until I started using strings. It probably kept dying due to some bug
# with an unusual charset, but I figure if someone's smart enough to use
# hex in their passes, they deserve a break.

# The script is dumb for 2 reasons (Aside from not being particularly clever):
# 1. It assumes that the folder specified in $2 already exists.
# 2. If your dictionary file's longest word is under 50 characters, you will
# end up with a bunch of 0 byte files for the upper ranges. Just include
# everything from hashes.org in your giant dictionary and you won't have to
# deal with this edge case.

# END EXTENSIVE DOCUMENTATION

strings -a $1 | awk 'length($0) > 4' | awk 'length($0) < 6' > $2/05
strings -a $1 | awk 'length($0) > 5' | awk 'length($0) < 7' > $2/06
strings -a $1 | awk 'length($0) > 6' | awk 'length($0) < 8' > $2/07
strings -a $1 | awk 'length($0) > 7' | awk 'length($0) < 9' > $2/08
strings -a $1 | awk 'length($0) > 8' | awk 'length($0) < 10' > $2/09
strings -a $1 | awk 'length($0) > 9' | awk 'length($0) < 11' > $2/10
strings -a $1 | awk 'length($0) > 10' | awk 'length($0) < 12' > $2/11
strings -a $1 | awk 'length($0) > 11' | awk 'length($0) < 13' > $2/12
strings -a $1 | awk 'length($0) > 12' | awk 'length($0) < 14' > $2/13
strings -a $1 | awk 'length($0) > 13' | awk 'length($0) < 15' > $2/14
strings -a $1 | awk 'length($0) > 14' | awk 'length($0) < 16' > $2/15
strings -a $1 | awk 'length($0) > 15' | awk 'length($0) < 17' > $2/16
strings -a $1 | awk 'length($0) > 16' | awk 'length($0) < 18' > $2/17
strings -a $1 | awk 'length($0) > 17' | awk 'length($0) < 19' > $2/18
strings -a $1 | awk 'length($0) > 18' | awk 'length($0) < 20' > $2/19
strings -a $1 | awk 'length($0) > 19' | awk 'length($0) < 21' > $2/20
strings -a $1 | awk 'length($0) > 20' | awk 'length($0) < 22' > $2/21
strings -a $1 | awk 'length($0) > 21' | awk 'length($0) < 23' > $2/22
strings -a $1 | awk 'length($0) > 22' | awk 'length($0) < 24' > $2/23
strings -a $1 | awk 'length($0) > 23' | awk 'length($0) < 25' > $2/24
strings -a $1 | awk 'length($0) > 24' | awk 'length($0) < 26' > $2/25
strings -a $1 | awk 'length($0) > 25' | awk 'length($0) < 27' > $2/26
strings -a $1 | awk 'length($0) > 26' | awk 'length($0) < 28' > $2/27
strings -a $1 | awk 'length($0) > 27' | awk 'length($0) < 29' > $2/28
strings -a $1 | awk 'length($0) > 28' | awk 'length($0) < 30' > $2/29
strings -a $1 | awk 'length($0) > 29' | awk 'length($0) < 31' > $2/30
strings -a $1 | awk 'length($0) > 30' | awk 'length($0) < 32' > $2/31
strings -a $1 | awk 'length($0) > 31' | awk 'length($0) < 33' > $2/32
strings -a $1 | awk 'length($0) > 32' | awk 'length($0) < 34' > $2/33
strings -a $1 | awk 'length($0) > 33' | awk 'length($0) < 35' > $2/34
strings -a $1 | awk 'length($0) > 34' | awk 'length($0) < 36' > $2/35
strings -a $1 | awk 'length($0) > 35' | awk 'length($0) < 37' > $2/36
strings -a $1 | awk 'length($0) > 36' | awk 'length($0) < 38' > $2/37
strings -a $1 | awk 'length($0) > 37' | awk 'length($0) < 39' > $2/38
strings -a $1 | awk 'length($0) > 38' | awk 'length($0) < 40' > $2/39
strings -a $1 | awk 'length($0) > 39' | awk 'length($0) < 41' > $2/40
strings -a $1 | awk 'length($0) > 40' | awk 'length($0) < 42' > $2/41
strings -a $1 | awk 'length($0) > 41' | awk 'length($0) < 43' > $2/42
strings -a $1 | awk 'length($0) > 42' | awk 'length($0) < 44' > $2/43
strings -a $1 | awk 'length($0) > 43' | awk 'length($0) < 45' > $2/44
strings -a $1 | awk 'length($0) > 44' | awk 'length($0) < 46' > $2/45
strings -a $1 | awk 'length($0) > 45' | awk 'length($0) < 47' > $2/46
strings -a $1 | awk 'length($0) > 46' | awk 'length($0) < 48' > $2/47
strings -a $1 | awk 'length($0) > 47' | awk 'length($0) < 49' > $2/48
strings -a $1 | awk 'length($0) > 48' | awk 'length($0) < 50' > $2/49
strings -a $1 | awk 'length($0) > 49' > $2/50
