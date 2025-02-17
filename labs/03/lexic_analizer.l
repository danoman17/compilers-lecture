/* 
Daniel Flores Rodríguez A01734184
Last mod: 10-10-23

Lexical analizer, for AC (Adding calculator)
- Types: float and integer 
    - Integer: sequence of decimal numerals 
    - Float: allows five fractional digits after the decimal Point
- Reserved keywords
    - f (declares a float variable) 
    - i (declares an integer variable) 
    - p (prints the value of a variable) 
- Variables
    - The ac Language offers only 23 possible variables names, drawn in lower case Roman alphabet and excluding the three reserved keywords f,i and p
- operators
    - The AC language offers onlye 5 basic operators: +, -, /, =, *
*/
%{
#include <stdio.h>
%}

%%

f                         { printf("floatdcl "); }

i                         { printf("intdcl "); }

p                         { printf("print "); }

[-+]?[.][0-9]{1,5}        { printf("fnum "); }

[-+]?[0-9]*[.][0-9]{1,5}  { printf("fnum "); }

[0-9]+                    { printf("inum "); }

[a-hj-oq-z]               { printf("id "); }

=                         { printf("assign "); }

\+                        { printf("plus "); }

\*                        { printf("times "); }

\-                        { printf("minus "); }

\/                        { printf("divides "); }

\/\/.*                    {/* comment line, ignore */}

\n                        { printf("\n"); }

\n\n                      {/* empty line, ignore */}

.                         { /* empty line, ignore */ }

%%