cs-problems
===========

A repo for solutions to problems, programming exercises, or ideas related to computer science

Anagram Solver
--------------
Parses a newline delimited file of words, returning each group of
anagrammed words (if specified), the running time, and the total number of matches

change permissions to executable: chmod +x anagram_solver.rb

word count: wc -l /usr/share/dict/words

```run: ./anagram_solver.rb example_words_file.txt [-v, --verbose]```
   - -v or --verbose will print out each grouping of anagrammed words


Terminal Character Limiter
--------------
Pipe a file with a long series of characters to this program (such as a
minified javacript file) as well as a character limit, and the program
will try to split the file based on certain delimiters to fit within
that character limit and output to STDOUT

```run: cat underscore-min.js | ./terminal_print.rb 80```
