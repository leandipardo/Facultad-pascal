// 3. Se dispone de un vector con números enteros, de dimensión física dimF y dimensión lógica dimL.
// a) Realizar un módulo que imprima el vector desde la primera posición hasta la última.
// b) Realizar un módulo que imprima el vector desde la última posición hasta la primera.
// c) Realizar un módulo que imprima el vector desde la mitad (dimL DIV 2) hacia la primera posición, y
// desde la mitad más uno hacia la última posición.
// d) Realizar un módulo que reciba el vector, una posición X y otra posición Y, e imprima el vector desde la
// posición X hasta la Y. Asuma que tanto X como Y son menores o igual a la dimensión lógica. Y considere
// que, dependiendo de los valores de X e Y, podría ser necesario recorrer hacia adelante o hacia atrás.
// e) Utilizando el módulo implementado en el inciso anterior, vuelva a realizar los incisos a, b y c.

program vectorNumEnteros;
    const dimF=150;
type
    vnum = array[1..dimF] of integer;

procedure imprimirHastaFinal(v:vnum);
var
i:integer;
begin
    for i := 0 to dimF do writeln(v[i]);
end;

procedure imprimirHastaPrincipio(v:vnum);
var
i:integer;
begin
    for i:= dimF downto 1 do writeln(v[i]);
end;

procedure imprimirDesdeMitad(v:vnum);
var
i:integer;
begin
    for i:=1 to (dimF div 2) do writeln(v[i]);
end;

procedure imprimirDesdeXaY(v:vnum;var x,y:integer);
var
i:integer;
begin
    writeln('Ingrese desde donde quiere imprimir');
    readln(x);
    writeln('Ingrese hasta donde quiere imprimir');
    readln(y);
    for i:=x to y do writeln(v[x]);
end;

var
arr:vnum;
x,y:integer;
begin
    imprimirHastaFinal(arr);
    imprimirHastaPrincipio(arr);
    imprimirDesdeMitad(arr);
    imprimirDesdeXaY(arr,x,y);
end.