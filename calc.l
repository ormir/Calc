%{
extern int yylval; 
extern int sym[];
extern int yyerror(char *s);
#include "y.tab.h"
#include <stdio.h>
%}

%%

[a-z]   {
	   yylval = *yytext - 'a';
	   return VARIABLE;
        }

[0-9]+  {  
           yylval = atoi(yytext);
           return INTEGER;
        }
0x[0-9a-fA-F]+ {
		//yytext is char array that we use the hex value of
		//printf("%s\n", yytext);
		//yylval =  atoi(yytext+2);
		yylval = (int)strtol(yytext, NULL, 16);
		return INTEGER;
		}

":="    return ASSIGN;
"+"     return PLUS;
"*"     return TIMES;
"-"		return MINUS;
"/"		return DIVIDE;
"%"		return MODULO;
"("		return LBRACE;
")"		return RBRACE;
"<"		return SMALLER;
"<="	return SMALLEREQ;
"=="	return EQUAL;
"!="	return DIFFERENT;
">"		return GREATER;
">="	return GREATEREQ;
","		return COMMA;
"min"	return MIN;
"max"	return MAX; 
"?"		return QUEST;
":"		return COLON;

"\n"    return NEWLINE;

[ \t]   ;

.       yyerror("Invalid character");

%%

int yywrap() {
 return 1;
}
