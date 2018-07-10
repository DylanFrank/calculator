
import java_cup.runtime.*;
import java.io.*;




%%

%class Scanner
%cup
%public
%line
%column
%8bit

//嵌入代码
%{
	private Symbol symbol(int type){
		return new Symbol(type,yyline,yycolumn);
	}
	private Symbol symbol(int type,Object value){
		return new Symbol(type,yyline,yycolumn,value);
	}
	
%}

%eofval{
  return symbol(Sym.EOF);
%eofval}

number = 0|[1-9][0-9]*
lineEnd = \r|\n|\r\n
ws = [ \t\f]



%%
//词法规则
<YYINITIAL> {
	<<EOF>>		{return symbol(Sym.EOF);}
	"+" 		{return symbol(Sym.ADD);}
	"-" 		{return symbol(Sym.MINUS);}
	"/" 		{return symbol(Sym.DIVIDE);}
	"*"			{return symbol(Sym.TIMES);}
	")" 		{return symbol(Sym.RPAREN);}
	"("			{return symbol(Sym.LPAREN);}
	{number}	{return symbol(Sym.NUMBER,new Integer(yytext()));}
	{ws}		{}
	{lineEnd}	{return symbol(Sym.LineEnd);}
}

