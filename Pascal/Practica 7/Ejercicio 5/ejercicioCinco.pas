// 5. Realizar un programa que lea y almacene la información de productos de un supermercado. De cada
// producto se lee: código, descripción, stock actual, stock mínimo y precio. La lectura finaliza cuando se ingresa
// el código -1, que no debe procesarse. Una vez leída y almacenada toda la información, calcular e informar:
// a. Porcentaje de productos con stock actual por debajo de su stock mínimo.
// b. Descripción de aquellos productos con código compuesto por al menos tres dígitos pares.
// c. Código de los dos productos más económicos.

program productosSupermercado;
type
    lista = ^producto;

    producto = record
    codigo:integer;
    descripcion:string[50];
    stock_actual:integer;
    stock_minimo:integer;
    precio:real;
    sig:lista;
    end;

procedure crearLista(var l:lista);
var
aux:lista;
begin
    new(aux);
    writeln('ingrese el codigo');
    readln(aux^.codigo);
    while aux^.codigo <> -1 do
    begin
    new(aux);
    writeln('ingrese la descripcion');
    readln(aux^.descripcion);
    writeln('ingrese el stock actual');
    readln(aux^.stock_actual);
    writeln('ingrese el stock minimo');
    readln(aux^.stock_minimo);
    writeln('ingrese el precio');
    readln(aux^.precio);
    writeln('ingrese el codigo');
    readln(aux^.codigo);
    aux^.sig := l;
    l:=aux;
    end;
end;

procedure stActDebajostMin(sa,sm:integer; var porcentaje:real;var total, esMenor:integer);
begin
    if sa < sm then esMenor := esMenor + 1;
    total := total + 1;
    if total > 0 then
        porcentaje := (esMenor / total) * 100
    else
        porcentaje := 0;  // Evita división por cero si la lista está vacía
end;

procedure descripcion(codigo:integer;descripcion:string);
var
    digito,pares:integer;
begin
    pares := 0;
    while codigo <> 0 do
    begin
        digito := codigo mod 10;
        if digito mod 2 = 0 then
        pares := pares + 1;
        codigo := codigo div 10;
    end;
    if pares >= 3 then writeln(descripcion);
end;

procedure dosMasEconomicos(precio:real;codigo:integer;var masEconomico,segundoMasEconomico:integer);
var
 min,smin:real;
begin
min:=9999;
smin:=9999;
if precio <= min then
begin
    smin:=min;
    segundoMasEconomico:=masEconomico;
    min:=precio;
    masEconomico:=codigo;
end
else if precio <= smin then 
begin
    smin:= precio;
    segundoMasEconomico:=codigo;
end;
end;    
var
pri,aux:lista;
masEconomico,segundoMasEconomico,total,esMenor:integer;
porcentaje:real;
begin
    masEconomico:=0;
    porcentaje:=0;
    segundoMasEconomico:=0;
    esMenor := 0;
    total := 0;
    pri:=nil;
    crearLista(pri);
    aux:=pri;
    while aux <> nil do
    begin
        stActDebajostMin(aux^.stock_actual,aux^.stock_minimo,porcentaje,total,esMenor);
        descripcion(aux^.codigo,aux^.descripcion);
        dosMasEconomicos(aux^.precio,aux^.codigo,masEconomico,segundoMasEconomico);
        aux := aux^.sig;
    end;
    writeln('El porcentaje de productos con stock por debajo del minimo es: ', porcentaje, '%');
    writeln('El codigo del producto mas economico es: ',masEconomico,'. El codigo del segundo producto mas economico es: ',segundoMasEconomico);
    readln();
end.
