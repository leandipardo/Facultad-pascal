// Realizar un programa que lea informacion de 200 productos de un supermercado. De cada producto se lee codigo y precio
// (cada codigo es un numero entre 1 y 200). informar en pantalla:
//     #Los codigos de los dos productos mas baratos.
//     #La cantidad de productos de más de 16 pesos con codigo par.
program productosSuper;
var
    codigo:LongWord;
    par,count,min:integer;
    precio,precioMin,minDos:real;
begin
    par:=0;
    for count := 1 to 200 do
    begin
        writeln('Ingrese el codigo del producto. [',count,'/200]');
        read(codigo);
        writeln('Ingrese el precio del producto. [',count,'/200]');
        read(precio);
        if(codigo >= 1) and (codigo <= 200) and(count = 1) then
        begin
            min:= codigo;
            precioMin:= precio;
            if(precio > 16) and (codigo mod 2 = 0)then par:=par+1;
        end;
        if(codigo >= 1) and (codigo <= 200) and(count > 1) then
        begin
            if(precio > 16) and (codigo mod 2 = 0)then par:=par+1;
            if(precio < precioMin)then
            begin
            minDos:=precioMin;
            precioMin:=precio;
            end;
        end;
    end;
    writeln('El producto mas barato es: ',min);
    writeln('El segundo producto mas barato es: ',minDos);
    writeln('La cantidad de productos de mas de 16 pesos con codigo par es:', par);
    readln();
end.