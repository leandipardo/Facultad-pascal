//Realizar un programa que lea el código, el precio actual y el nuevo precio de los productos de un almacén . la lectura finaliza al ingresar
//el producto con el código 32767, el cual debe procesarse .
//para cada producto leído, el programa deberá indicar si el nuevo precio del producto supera en un 10% el precio anterior, por ejemplo:
// # Si se ingresa el codigo 10382, con precio actual 40 y nuevo precio 44 deberá imprimir : "El aumento del precio del producto 10382 no supera el 10%"
// ## Si se ingresa el codigo 32767, con precio actual 30 y nuevo precio 33,01 debera imprimir: " el aumento de precio del producto 32767 es superior al 10%".

program PromedioAlumnos;
var
precioActual,nuevoPrecio:real;
codigo:integer;
continuar:boolean;
begin
    continuar:=true;
    while continuar do
    begin
        writeln('ingresa el codigo del producto.');
        readln(codigo);
        if codigo = 32767 then continuar:=false;
        writeln('ingresa el precio actual.');
        readln(precioActual);
        writeln('ingresa el nuevo precio');
        readln(nuevoPrecio);
        if (precioActual + (nuevoPrecio * 0.1))< nuevoPrecio then writeln('el aumento del producto ',codigo,' es superior al 10%.');
    end
end.