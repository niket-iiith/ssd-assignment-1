#!/bin/bash

# a) Remove empty lines and generate a quotes_empty.txt file
grep . quotes.txt > quotes_empty.txt


#b) Remove duplicates and generate a quotes_rdup.txt file
awk '!seen[$0]++' quotes_empty.txt > quotes_rdup.txt


#c) Count the Number of Quotes by Personality and Print Them in quotes_byperson.txt
awk -F '~' '{ count[$2]++ } END { for (person in count) print count[person], person }' quotes_rdup.txt > quotes_byperson.txt


#d) List all the words in the file that starts with ‘s’ and doesn’t follow by ‘a’
grep -o '\bs[^a ]\w*' quotes_rdup.txt

