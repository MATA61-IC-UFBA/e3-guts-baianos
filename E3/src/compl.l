%option noyywrap yylineno
%{

// noyywrap    - no need to deal with multiple input files
// yylineno    - variable to track line numbers 
//               that copies otherwise unmatched input to yyout.

#include "token.h"
#include <stdio.h>
#include <stdlib.h>

%}


%%

"//".*              {/* pula comentario */}
[ \t\n\r]+          {/* pula espacejamento */}
[0-9]+              {return NUM;}
"array"             { return ARRAY; }          
"boolean"           { return BOOLEAN; }        
"char"              { return CHAR; }           
"else"              { return ELSE; }           
"false"             { return FALSE; }          
"for"               { return FOR; }            
"function"          { return FUNCTION; }       
"if"                { return IF; }             
"integer"           { return INTEGER; }        
"print"             { return PRINT; }          
"return"            { return RETURN; }         
"string"            { return STRING; }         
"true"              { return TRUE; }           
"void"              { return VOID; }           
"while"             { return WHILE; }          
"<="                { return LTE; }    
">="                { return GTE; }    
"=="                { return EQ; }     
"!="                { return NEQ; }    
"&&"                { return AND; }    
"||"                { return OR; }     
"+"     { return PLUS; }        
"-"     { return MINUS; }       
"*"     { return MULTIPLY; }    
"/"     { return DIVIDE; }      
"%"     { return MODULO; }      
"!"     { return NOT; }         
"<"     { return LESS_THAN; }   
">"     { return GREATER_THAN; }
"="     { return ASSIGN; }      
":"     { return COLON; }       
";"     { return SEMICOLON; }   
","     { return COMMA; }       
"("     { return LPAREN; }      
")"     { return RPAREN; }      
"["     { return LBRACKET; }    
"]"     { return RBRACKET; }    
"{"     { return LBRACE; }      
"}"     { return RBRACE; }      
"\\"    { return BACKSLASH; }   
[a-zA-Z]+           {return ID;}
\"([^"\n\r])*\"   {return STR;}
'([^'\\\n\r]|\\.)'   {return CHAR;}
.                   {return ERROR;}

%%