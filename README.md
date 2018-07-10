a calculator based on jflex &  java-cup

jflex :http://jflex.de/manual.html
java-cup : http://www2.cs.tum.edu/projects/cup/

this files is organized as follow:

	* ./tool/lexer.flex lexer code
	
	* ./tool/paser.cup parser code
	
	* ./src  source code produced automatically
	
	* ./res/in.txt  input file for test
assure u are in java work directory, and the parent dir of this project is java work directory

compile cmd:

jflex -d ./calculator/src/  ./calculator/tool/lexer.flex

java -jar java-cup-11b.jar -parser Parser -destdir ./calculator/src/ -symbols Sym ./calculator/tool/paser.cup

	