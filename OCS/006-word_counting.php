
<?php

/*
A large string of words --> a group of key value pairs, mapping each unique word and tallying it

does the word exist as a key value? then add it?  can we do that?
we need to instantiate key values as variables, we don't know how many we will get

determine what our key values are, all the unique words
find unique words, collect them
then instantiate our key value hash based on the collection of key words


e.g: "It for and it for what do what do it" -> [it, for, and, what, do]

clean up the data, get rid of punctuation

if "it" is not a key value in the hash, add it as a key value to the hash & update the tally for it

if "it" is a key value in the hash, update its tally. 

-> words {:it => 3, :for => 2, :and => 1, :what => 2 }

*/


$a = array ('a' => 'apple', 'b' => 'banana', 'c' => array ('x', 'y', 'z'));
print_r ($a);

?>


