// El registro civil de la plata ha solicitado un programa para analizar la distribucion de casamientos durante ese año.
// a) analizar y definir un tipo de dato adecuado para almacenar la informacion de la fecha de cada casamiento.
// b) implementar un modulo que lea una fecha desde teclado y la retorne en un parametro cuyo tripo es el definido en el inciso adecuado  implementar un programa que lea la fecha de todos los casamientos realizados en 2019. la lectura finaliza al ingresar el año 2020, que no debe procesarse, e informe la cantida de casamientos realizados durante los meses de verano
// (enero, febrero y marzo) yt la cantidad de casamientos realizados en los primeros dais de cada mes. notea, utilizar modulo realizado en b) para la lectura de la fecha.)

program registroCivil;
type
    Tfecha = record
        dia:integer;
        mes:integer;
        anio:integer;
    end;
procedure lecturaDeFecha(var fecha : Tfecha);
begin
    writeln('Ingrese el dia del casamiento: ');
    readln(fecha.dia);
    writeln('Ingrese el mes del casamiento: ');
    readln(fecha.mes);
    writeln('Ingrese el anio del casamiento: ');
    readln(fecha.anio);
end;
var
    fecha:Tfecha;
    primerosMeses,primerosDias:integer;
begin
    primerosMeses:=0;
    primerosDias:=0;
    repeat
        lecturaDeFecha(fecha);
        if (fecha.mes <= 3) then primerosMeses:=primerosMeses +1;
        if (fecha.dia < 10) then primerosDias:=primerosDias +1;
    until(fecha.anio = 2020);
    writeln('La cantidad de casamientos en los primeros meses del año es de: ',primerosMeses);
    writeln('La cantidad de casamientos en los primeros dias del año es de: ',primerosDias);
    readln();
end.