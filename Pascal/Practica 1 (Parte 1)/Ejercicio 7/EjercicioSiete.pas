//Realizar un programa que lea el código, el precio actual y el nuevo precio de los productos de un almacén . la lectura finaliza al ingresar
//el producto con el código 32767, el cual debe procesarse .
//para cada producto leído, el programa deberá indicar si el nuevo precio del producto supera en un 10% el precio anterior, por ejemplo:
// # Si se ingresa el codigo 10382, con precio actual 40 y nuevo precio 44 deberá imprimir : "El aumento del precio del producto 10382 no supera el 10%"
// ## Si se ingresa el codigo 32767, con precio actual 30 y nuevo precio 33,01 debera imprimir: " el aumento de precio del producto 32767 es superior al 10%".

program codigoAlmacen;
var
    codigo:integer;
    precioActual, nuevoPrecio:real;
begin
    codigo:=0;
    repeat
    writeln('Ingrese el codigo del producto:');
    readln(codigo);
    writeln('Ingrese el precio actual del producto:');
    readln(precioActual);
    writeln('Ingrese el nuevo precio del producto:');
    readln(nuevoPrecio);
    if((precioActual/10) <= (nuevoPrecio - precioActual)) then writeln('El aumento del precio del producto ',codigo,' supera el 10%.')
    else writeln('El aumento de precio del producto ',codigo,' no supera el 10%.');
    writeln();
    writeln();
    writeln();
    until codigo = 32767;
end.