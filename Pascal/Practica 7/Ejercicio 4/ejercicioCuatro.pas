// 4. Utilizando el programa del ejercicio 1, realizar los siguientes módulos:
// a. Máximo: recibe la lista como parámetro y retorna el elemento de valor máximo.
// b. Mínimo: recibe la lista como parámetro y retorna el elemento de valor mínimo.
// c. Múltiplos: recibe como parámetros la lista L y un valor entero A, y retorna la cantidad de elementos de la
// lista que son múltiplos de A.

program JugamosConListas;
type
    lista = ^nodo;
    nodo = record
        num : integer;
        sig : lista;
    end;

procedure armarNodo(var L: lista; v: integer);
var
    aux : lista;
begin
    new(aux);
    aux^.num := v;
    aux^.sig := L;
    L := aux;
end;

procedure imprimir(l:lista);
var
    aux:lista;
begin
    aux:=l;
    while aux <> nil do
    begin
        writeln(aux^.num);
        aux:=aux^.sig;
    end;
end;

function maximo(l:lista):integer;
var
    max:integer;
    aux:lista;
begin
    max:=-9999;
    aux:=l;
    while aux <> nil do
    begin
        if(aux^.num > max) then max:=aux^.num;
        aux:=aux^.sig;
    end;
    maximo:=max;
end;  

function minimo(l:lista):integer;
var
    min:integer;
    aux:lista;
begin
    min:=9999;
    aux:=l;
    while aux <> nil do
    begin
        if(aux^.num < min) then min:=aux^.num;
        aux:=aux^.sig;
    end;
    minimo:=min;
end;

function multiplos(l:lista;a:integer):integer;
var
    aux:lista;
    n,count:integer;
begin
    aux:=l;
    n:=a;
    count:=0;
    while aux <> nil do
    begin
        if(aux^.num mod n = 0)then count := count + 1;
        aux:=aux^.sig;
    end;
    multiplos:=count;
end;


procedure aumentar(l:lista;n:integer);
var
    aux:lista;
begin
    aux:=l;
    while aux <> nil do
    begin
        aux^.num:=aux^.num + n;
        aux:=aux^.sig;
    end;
end;

var
    pri : lista;
    a,valor : integer;
begin
    pri := nil;
    writeln('Ingrese un numero');
    read(valor);
    while (valor <> 0) do
    begin
        armarNodo(pri, valor);
        writeln('Ingrese un numero');
        read(valor);
    end;
    writeln('Los numeros en la lista son: ');
    imprimir(pri);
    writeln('El numero mas alto de la lista es: ',maximo(pri));
    writeln('El numero mas bajo de la lista es: ',minimo(pri));
    writeln('Ingrese un valor para saber cuantos numeros son multiplos de este: ');
    readln(a);
    writeln('La cantidad de numeros que son multiplos de ',a,' es de: ', multiplos(pri,a));
    writeln('Ingrese un valor a aumentar los numeros de la lista:');
    readln(valor);
    aumentar(pri,valor);
    imprimir(pri);
    readln(valor);
end.

