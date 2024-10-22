// 1. Dado el siguiente programa:
// a. Indicar qué hace el programa. - CREA UNA LISTA CON LOS NUMEROS INVERTIDOS
// b. Indicar cómo queda conformada la lista si se lee la siguiente secuencia de números: 10 21 13 48 0. - 48 13 21 10
// c. Implementar un módulo que imprima los números enteros guardados en la lista generada.
// d. Implementar un módulo que reciba la lista y un valor, e incremente con ese valor cada dato de la lista.
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
    valor : integer;
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
    writeln('Ingrese un valor a aumentar los numeros de la lista:');
    readln(valor);
    aumentar(pri,valor);
    imprimir(pri);
    readln(valor);
end.

