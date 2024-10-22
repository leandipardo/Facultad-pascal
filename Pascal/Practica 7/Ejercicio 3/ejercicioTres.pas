// 3. Utilizando el programa del ejercicio 1, realizar los siguientes cambios:
// a. Modificar el módulo armarNodo para que los elementos se guarden en la lista en el orden en que fueron
// ingresados (agregar atrás).
// b. Modificar el módulo armarNodo para que los elementos se guarden en la lista en el orden en que fueron
// ingresados, manteniendo un puntero al último ingresado.

program JugamosConListas;
type
    lista = ^nodo;
    nodo = record
        num : integer;
        sig : lista;
    end;

procedure armarNodo(var primero: lista; var ultimo: lista; v: integer);
var
    aux : lista;
begin
    new(aux);
    aux^.num := v;
    aux^.sig := nil;
    if(primero <> nil)then
    begin
     ultimo^.sig := aux;         
    end
    else
    begin
        primero:=aux;
    end;
    ultimo:= aux;
end;

// procedure armarNodo(var L: lista; v: integer);
// var
//     aux : lista;
// begin
//     new(aux);
//     aux^.num := v;
//     L^.sig := aux;
//     L := aux;
// end;

// procedure armarNodo(var L:lista; v:integer);
// var
//     aux,actual:lista;
// begin
//     new(aux); //reservo espacio para aux.
//     aux^.num:=v; //le doy el valor a aux.
//     aux^.sig:=nil; //pongo que aux sea el ultimo elemento de la lista.
//     if L = nil then L:=aux // si la lista tiene 1 solo elemento o ninguno entonces L es aux.
//     else
//     begin
//         actual := L; //se le asigna actual a la lista.
//         while actual^.sig <> nil do
//         begin
//             actual:= actual^.sig;
//         end;
//         actual^.sig:=aux;
//     end;
// end;



procedure imprimir(l:lista);
begin
    while l <> nil do
    begin
        writeln(l^.num);
        l:=l^.sig;
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
    pri, ult : lista;
    valor : integer;
begin
    pri := nil;
    writeln('Ingrese un numero');
    read(valor);
    while (valor <> 0) do
    begin
        armarNodo(pri, ult, valor);
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

