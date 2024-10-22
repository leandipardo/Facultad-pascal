// 8. Realizar un programa modularizado que lea datos de 100 productos de una tienda de ropa. Para cada
// producto debe leer el precio, código y tipo (pantalón, remera, camisa, medias, campera, etc.). Informar:
// ● Código de los dos productos más baratos.
// ● Código del producto de tipo “pantalón” más caro.
// ● Precio promedio.
program tiendaRopa;
procedure valoresMasBajo(var pmasBajo,segundoMasBajo:real;precio:real;codigo:integer);
begin
    if precio <= masBajo then
    begin
     codigoSegundoMasBajo:=masBajo;
     codigoMasBajo:=codigo;
    end;
end;
// function pantalonMasCaro(pantalon:real):real;
// begin
// end;
// function promedio(precio):real;
// begin
// end;
var
masBajo,segundoMasBajo,pantalon,precio:real;
tipo:string;
codigoMasBajo,codigoSegundoMasBajo,codigo,i:integer;
begin
    segundoMasBajo:=99999;
    masBajo:=99999;
    for i := 1 to 100 do
    begin
        writeln('Ingrese el codigo de producto: ');    readln(codigo);
        writeln('Ingrese el precio del producto: ');    readln(precio);
        writeln('Ingrese el tipo de producto: ');   readln(tipo);
        valoresMasBajo(masBajo,segundoMasBajo,precio,codigo);
    end;
end.