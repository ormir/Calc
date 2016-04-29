%{
#include <stdio.h>
int sym[26];
int yyerror(char *s); 
int yylex();
int min (int a,int b);
int max (int a, int b);
%}

%token VARIABLE ASSIGN INTEGER NEWLINE LBRACE RBRACE SMALLER SMALLEREQ EQUAL DIFFERENT GREATER GREATEREQ COMMA MIN MAX
%left PLUS
%left TIMES
%left MINUS
%left DIVIDE
%left MODULO


%%

program: program statement
       | 
       ;

statement: expr NEWLINE { printf("%d\n", $1); }
         | VARIABLE ASSIGN expr NEWLINE { sym[$1] = $3; }
         ;

expr: INTEGER            { $$ = $1; }
      | VARIABLE         { $$ = sym[$1]; }
      | expr PLUS expr   { $$ = $1 + $3; }
      | expr TIMES expr  { $$ = $1 * $3; }
      | expr MINUS expr  { $$ = $1 - $3; }
      | expr DIVIDE expr  { $$ = $1 / $3; }
      | expr MODULO expr  { $$ = $1 % $3; }
      | LBRACE expr RBRACE  { $$ = $2 ; }
      | MINUS expr        { $$ = - $2 ; }
      | PLUS expr         { $$ = $2; }
      | expr SMALLER expr { $$ = $1 < $3; }
      | expr SMALLEREQ expr { $$ = $1 <= $3; }
      | expr EQUAL expr { $$ = $1 == $3; }
      | expr DIFFERENT expr { $$ = $1 != $3; }
      | expr GREATER expr { $$ = $1 > $3; }
      | expr GREATEREQ expr { $$ = $1 >= $3; }
      | MIN LBRACE expr COMMA expr RBRACE { $$ = min ($3, $5); }
      | MAX LBRACE maxexpr RBRACE { $$ = $3; }

      ;

maxexpr: expr { $$ = $1; }
      | expr COMMA maxexpr { $$ = max($1, $3); }
        ;

%%

int yyerror(char *s) {
  fprintf(stderr, "%s\n", s);
  return 0;
}

int min (int a, int b){
  return (a < b) ? a : b;
}

int max (int a, int b){
  return (a > b) ? a : b;
}


int main() {
  yyparse();
  return 0;
}
