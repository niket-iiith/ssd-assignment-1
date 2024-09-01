##### Overview:-
This repository contains shell scripts that solve the following four tasks:-
1) Text File Manipulation with Quotes: Processing a file of quotes by famous personalities.
2) Password and Bank Account Number Generator: Creating secure passwords and account numbers.
3) Directory Listing and Sorting: Listing directories sorted by size.
4) File Creation and Extension Change: Creating files and changing their extensions.


### Task Details:-
# Q1: Text File Manipulation with Quotes 
Source: quotes.txt
Script Name: q1.sh

This script performs the following operations on a text file containing quotes:
- Remove Empty Lines: Generates a file named quotes_empty.txt containing no empty lines.
- Remove Duplicate Lines: Generates a file named quotes_rdup.txt containing unique quotes only.
- Count Quotes by Personality: Creates quotes_byperson.txt, listing the number of quotes by each personality.
- List Words Starting with 's' Not Followed by 'a': Outputs a list of such words from the quotes.

Usage:
- Run the script: ./q1.sh
- Ensure that quotes.txt is in the same directory as the script.

Expected Outputs:
- quotes_empty.txt: File with all empty lines removed.
- quotes_rdup.txt: File with duplicate quotes removed.
- quotes_byperson.txt: File with the count of quotes per personality.
- Console output: List of words starting with 's' but not followed by 'a'.


# Q2: Password and Bank Account Number Generator 
Script Name: q2.sh

This script generates:
1) Password: A random password with a length of 8-10 characters, including at least one uppercase letter, one lowercase letter, and one special character from %&#$@()!.
2) Bank Account Number: A random 12-14 digit account number with no repeating digits, not starting with zero, no triple consecutive digits, and no Fibonacci sequence in the number.

Usage:
- Run the script: ./q2.sh

Expected Outputs:
- A secure password meeting the specified criteria.
- A bank account number that adheres to the provided conditions.



# Q3: Directory Listing and Sorting 
Script Name: q3.sh

This script lists all directories in the current directory, sorting them by size in increasing order. The output includes only the directory names and their sizes, formatted in human-readable units (Bytes, KB, MB, GB), and tab-separated.

Usage:
- Run the script in the desired directory: ./q3.sh
- Ensure the directory contains some sample directories for testing.

Expected Outputs:
- A list of directories with their sizes, sorted by size in increasing order, displayed in the terminal.


# Q4: File Creation and Extension Change 
Script Name: q4.sh

This script performs the following tasks:
- Creates a directory named temp_activity.
- Inside this directory, creates 50 files named temp1.sh to temp50.sh.
- Changes the file extensions from .sh to .txt for files temp1 to temp25.

Usage:
- Run the script: ./q4.sh

Expected Outputs:
- A directory named temp_activity containing 50 files. The first 25 files have the .txt extension, and the remaining 25 have the .sh extension.

Prerequisites:
- Ensure that you have Bash installed on your system.
- Make sure to provide executable permissions to the scripts before running them.