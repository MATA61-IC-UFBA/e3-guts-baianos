%option noyywrap yylineno
%{

// noyywrap    - no need to deal with multiple input files
// yylineno    - variable to track line numbers 
//               that copies otherwise unmatched input to yyout.

#include "token.h"

%}


%%

"//".*              {/* pula comentario */}
[ \t\n\r]+          {/* pula espacejamento */}
[0-9]+              {return NUM;}
array|boolean|char|else|false|for|function|if|integer|print|return|string|true|void|while   { return KEY;}
"<="|">="|"=="|"!="|"&&"|"||"                                                               { return SYMC;}
"+"|"-"|"*"|"/"|"%"|"!"|"<"|">"|"="|":"|";"|","|"("|")"|"["|"]"|"{"|"}"|"\\"                { return SYM;}
[a-zA-Z]+           {return ID;}
\"([^"\n\r])*\"   {return STR;}
'([^'\\\n\r]|\\.)'   {return CHAR;}
.                   {return ERROR;}

%%