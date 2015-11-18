# whitespace

This tool will examine a text file (or STDIN) for whitespace and output a description of the redundant white space it finds.
Usually the whitespace it finds can be safely removed from a file, without impacting the layout or functionality of the page.

An example output might look like this:

`Leading White Space :1: <HEAD>:
Leading White Space :1: <TITLE> Hello </TITLE>:
Leading White Space :1: </HEAD>   :
Trailing White Space:3: </HEAD>   :
Leading White Space :1: <BODY>:
All White Space     :1::
Leading White Space :1: Hello 2:
Trailing White Space:3:Trailing Only   :
Leading White Space :1: </BODY>:
All White Space     :1::
All White Space     :7:      :

Characters in whitespace only lines:9 characters.
Characters of leading whitespace   :6 characters.
Characters of trailing whitespace  :6 characters.
Total unnecessary whitespace       :21 characters.`


##How to Get started:
`./whitespace.rb -h`


It's for command line use, developed on linux, should work on Windows and Mac.
