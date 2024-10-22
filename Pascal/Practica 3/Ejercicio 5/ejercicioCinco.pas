//Realizar un programa que lea información de autos que están a la venta en una concesionaria. De cada auto se
//lee: marca, modelo y precio. La lectura finaliza cuando se ingresa la marca “ZZZ” que no debe procesarse. La
//nformación se ingresa ordenada por marca. Se pide calcular e informar:
//a. El precio promedio por marca.
//b. Marca y modelo del auto más caro.
program autos;

type
    auto = record
        marca: string;
        modelo: string;
        precio: real;
    end;

var
    precioMasAlto, promedio: real;
    check, cortafuegos: boolean;
    modeloYMarcaMasAlta, marcaAnterior: string;

procedure precioPromedio(marca: string; precioItem: real; finalizar: boolean);
begin
    if not cortafuegos then 
    begin
        promedio := 0;
        marcaAnterior := marca;
        cortafuegos := true;
    end;
    promedio := promedio + precioItem;
    if (finalizar = true) or (marca <> marcaAnterior) then 
    begin
        writeln('El precio promedio de la marca ', marca, ' es de: ', promedio:0:2);
        cortafuegos := false;
    end;
end;

procedure marcaYModeloMasCaro(marca: string; modelo: string; precio: real; finalizar: boolean);
begin
    if not check then
    begin
        precioMasAlto := 0;
        check := true;
    end;
    if precioMasAlto < precio then 
    begin
        precioMasAlto := precio;
        modeloYMarcaMasAlta := marca + ' ' + modelo + '.';
    end;
    if finalizar then 
        writeln('El auto más caro es: ', modeloYMarcaMasAlta, ' con un precio de: ', precioMasAlto:0:2);
end;

procedure lectura(var conc: auto);
begin
    repeat
        writeln('Ingrese la marca (ZZZ para terminar):');
        readln(conc.marca);
        if conc.marca <> 'ZZZ' then
        begin
            writeln('Ingrese el modelo:');
            readln(conc.modelo);
            writeln('Ingrese el precio:');
            readln(conc.precio);
            precioPromedio(conc.marca, conc.precio, false);
            marcaYModeloMasCaro(conc.marca, conc.modelo, conc.precio, false);
        end;
    until conc.marca = 'ZZZ';
    precioPromedio('', 0, true);
    marcaYModeloMasCaro('', '', 0, true);
end;

var
    concesionaria: auto;

begin
    cortafuegos := false;
    check := false;
    lectura(concesionaria);
end.