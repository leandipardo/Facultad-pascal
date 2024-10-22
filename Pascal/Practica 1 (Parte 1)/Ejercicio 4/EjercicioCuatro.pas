// Realizar un programa que lea el número de legajo y el promedio de cada alumno de la facultad. La
// lectura finaliza cuando se ingresa el legajo -1, que no debe procesarse.
// Por ejemplo, se lee la siguiente secuencia:
// 33423
// 8.40
// 19003
// 6.43
// -1
// En el ejemplo anterior, se leyó el legajo 33422, Cuyo promedio fue 8.40, luego se leyó ei legajo
// 19003, cuyo promedio fue 6.43, y finalmente e/ legajo -1 (para e/ cual no es necesario leer un
// promedio).
// Al finalizar la lectura, informar:
// o La cantidad de alumnos leída (en el ejemplo anterior, se debería informar 2)
// o La cantidad de alumnos cuyo promedio supera 6.5 (en el ejemplo anterior, se debería informar 1)
// o EI porcentaje de alumnos destacados (alumnos con promedio mayor a 8,5) cuyo legajo sean
// menor al valor 2500 (en el ejemplo anterior se debería informar 0%).
program lecturaLegajo;
var
cantidadAlumnos,superiorSeis,superiorOcho,numeroLegajo:integer;
porcentajeOcho,promedio:real;
begin
superiorSeis:=0;
porcentajeOcho:=0;
cantidadAlumnos:=0;
numeroLegajo:=0;
superiorOcho:=0;
while numeroLegajo <> -1 do
begin
    writeln('Ingrese el numero de legajo: ');
    readln(numeroLegajo);
    if(numeroLegajo <> -1) then
    begin
        writeln('Ingrese el promedio: ');
        readln(promedio);
        cantidadAlumnos:=cantidadAlumnos + 1;
        if (promedio > 6.5) then
        begin
            superiorSeis:= superiorSeis + 1;
            if (promedio >= 8.5) and (numeroLegajo < 2500)then
            begin
                superiorOcho:= superiorOcho + 1;
                porcentajeOcho:= (superiorOcho / cantidadAlumnos) * 100; 
            end; 
        end;
    end;
end;
    writeln('Cantidad de alumnos leida: ', cantidadAlumnos);
    writeln('Cantidad de alumnos con promedio superior a 6,5: ', superiorSeis);
    writeln('Cantidad de alumnos con promedio superior a 8,5: ',superiorOcho); 
    writeln('Porcentaje alumnos destacados: ',porcentajeOcho:0:2,'%');
    readln();
end.