#!/bin/bash

# For an odd number of pages we count one extra page. For double sided
# printing of 5 pages you need 3 sheets of paper. That is why the cnt
# (counter) variable is there.

# sum holds the amount of pages
# divide sum + cnt by 2 to get the number of sheets you need when using double sided printing

for i in *.pdf
do
    pdfinfo $i
done | grep Pages | awk -F\: 'BEGIN {sum = 0; cnt = 0} {if ($2 % 2 == 1) cnt += 1; sum += $2} END {print "Total pages (single sided printing): ", sum; print "Double sided printing: " (sum + cnt) / 2}'
