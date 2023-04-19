%{

%}

/* rules */
%%
"go to"|exit|if|then|else|case|endcase|while|do|endwhile|repeat|until|loop|forever|for|to|by|endfor|input|output|array|node|call|return|stop|end|procedure printf("<RESERVE>");
and|or|not printf("<LOGICAL_OP>");
mod|log printf("<MISCMATH_OP>");
"+"|"-"|"×"|"/"|"^" printf("<ARITHMETIC_OP>");
[1-9][0-9]*|0 printf("<INTEGER>");
"<"|"<="|"=="|"!="|">"|">=" printf("<RELATIONAL_OP>");
[a-z|A-Z|_][0-9|a-z|A-Z|_]* printf("<IDENTIFIER>");
"="|"'"|":"|";"|"("|")"|"["|"]" printf("<SYMBOL>");
\n 
<<EOF>> return 0;
%%

yywrap() {}

int main() {
    //yyin = fopen("file.txt", "r");
    yylex();
}