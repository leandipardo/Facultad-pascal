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

program PromedioAlumnos;
var
legajo,cantidadAlumnos,alumnosAprobados,alumnosDestacados:integer;
promedio,promedioGeneral,porcentaje:real;
continuar:boolean;
begin
    continuar:=true;
    legajo:= 0;
    promedioGeneral:= 0;
    cantidadAlumnos:=0;
    alumnosAprobados:=0;
    alumnosDestacados:=0;
    repeat
        writeln('Ingresa numero de legajo (o ingresa -1 para salir): ');
        readln(legajo);
        if legajo <> -1 then 
        begin
            writeln('Ingresa el promedio del alumno ', legajo, ': ');
            readln(promedio);
            if (promedio >= 0) and (promedio <= 10) then
            begin
                promedioGeneral:= promedioGeneral + promedio;
                cantidadAlumnos := cantidadAlumnos + 1;
                if (promedio >= 6.5) then 
                begin 
                    alumnosAprobados:=alumnosAprobados + 1;
                    if (promedio >= 8.5) and (legajo < 2500) and (legajo >= 0) then alumnosDestacados:=alumnosDestacados + 1;
                end
            end
        end
        else continuar:= false;
    until not continuar;
    if cantidadAlumnos > 0 then
    begin
        porcentaje:= ((alumnosDestacados / cantidadAlumnos) * 100);
        promedioGeneral:= promedioGeneral / cantidadAlumnos;
        writeln('_________________________________________________________________');
        writeln('La cantidad de alumnos leida es de : ',cantidadAlumnos,'.');
        writeln('El promedio general de los alumnos es de : ', promedioGeneral:0:2,'.');
        writeln('La cantidad de alumnos aprobados es de : ', alumnosAprobados,'.');
        writeln('La cantidad de alumnos destacados es de :', porcentaje:2:2,'%.');
        writeln('_________________________________________________________________');
        readln(legajo);
    end
end.