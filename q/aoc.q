\e 1
\c 50 200
\l santas_helpers.q

day_1:{[input]
  f:"I"$read0 hsym `$input;
  calories:sum each (0,where null f)_ f;
  0N!"Part One: ",string max calories;
  0N!"Part Two: ",string sum 3#desc calories;  
 }

day_2:{[input]
 f:`$ " " vs/: read0 hsym `$input;
 score_card: (`A`B`C cross `X`Y`Z)!(9#(1 2 3))+raze (0 -1 -2) rotate\: 3 6 0;
 0N!"Part One: ",string sum ((`A`B`C cross `X`Y`Z)!(9#1 2 3)+raze (0 -1 -2) rotate\: 3 6 0) f;
 0N!"Part Two: ",string sum ((reverse each `X`Y`Z cross `A`B`C)!(raze 3#/:0 3 6)+raze (-1 0 1) rotate\: 1 2 3) f;
 }

day_3:{[input]
 f:read0 hsym `$input;
 p:("c"$(97+til 26),(65+til 26))!(1+til 52);
 0N!raze "Part One: ",string sum p {distinct inter[x;y]}./: 2 0N #/: f;
 0N!raze "Part Two: ",string sum p(distinct (inter) over)each (0N 3 # f);
 }

day_4:{[input]
 f:read0  hsym `$input;
 0N!"Part One: ",string sum {((inter). p) in p:{(-1*1+x[1]-x[0])#til x[1]}each "I"$"-" vs/: "," vs x}each f;
 0N!"Part Two: ",string count where 0<{count (inter). p:{(-1*1+x[1]-x[0])#til x[1]}each "I"$"-" vs/: "," vs x}each f;
 }

day_5:{[input]
 f:read0  hsym `$input;
 b:(1+til count c)!c:(trim each c) where 0<sum each not null c:flip -1_/: 1_/: ssr[;"[][]";" "] each (-1+f?"") # f;
 i:"I"$","vs/:{ssr[ssr[5_ x;" from ";","];" to ";","]} each (1+f?"") _ f;
 r:b{m:reverse y[0]#x[y[1]];x[y[1]]:y[0] _ x[y[1]];x[y[2]]:m,x[y[2]];x}/i;
 0N!"Part One: ",raze first each value r;
 r:b{m:y[0]#x[y[1]];x[y[1]]:y[0] _ x[y[1]];x[y[2]]:m,x[y[2]];x}/i;
 0N!"Part Two: ",raze first each value r;
 }

day_6:{[input]
 f:raze read0  hsym `$input;
 0N!"Part One: ",string 4+min where 4={count distinct x} each 4#/:(til count f)_\: f;
 0N!"Part Two: ",string 14+min where 14={count distinct x} each 14#/:(til count f)_\: f;
 }

"*************************************************************"
"******************** advent of code 2022 ********************"
"*************************************************************"

TODAY:6;
SKIP:();
run:{
 0N!(x#"*")," Day ",sx:string x;
 $[x in SKIP;
   0N!"UNDER CONSTRUCTION!!";
   eval parse raze "0N!\"Day ",sx," time space (ms|bytes): \", \"|\" sv string system \"ts day_",sx,"[\\\"../input/day_",sx,".txt\\\"]\""];
 }

run each 1+til TODAY;
\\
