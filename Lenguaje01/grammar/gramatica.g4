/******************************************************
 * A multi-line Javadoc-like comment about my grammar *
 ******************************************************/
grammar gramatica;

programa :      instruccion+ ;

instruccion :   PRINT expresion ;

expresion   :   termino ('+' termino | '-' termino) * ;

termino     :   factor ('*' factor | '/' factor) *;

factor      :   NUMERO 
            |   '(' expresion ')'
            ;

/********************************************************
 * ANALIZADOR LEXICO                                    *
 ********************************************************/

DIGITO  :   '0'..'9';
NUMERO  :   DIGITO+ ('.' DIGITO+ )? ;
PRINT   :   '?';

