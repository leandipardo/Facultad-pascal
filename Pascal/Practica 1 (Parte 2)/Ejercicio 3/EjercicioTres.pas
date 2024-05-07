// Realizar un programa que lea desde teclado la información de alumnos ingresantes a la carrera Analista en TIC. De cada alumno se 
// lee nombre y nota obtenida en el módulo EPA(la nota es un número entre 1 y 10). La lectura finaliza cuando se lee el 
// nombre"Zidane Zinedine", que debe procesarse. Al finalizar la lectura informar:
//     -La cantidad de alumnos aprobados (nota 8 o mayor)
//     -La cantidad de alumnos que obtuvieron un 7 como nota.
program ingresantes;
var
    nombre:string;
    nota, aprobados, siete:integer;
begin
    aprobados:=0;
    siete:=0;
    repeat
        if nombre <> 'Zidane Zinedine' then
        begin
            writeln('Ingrese el nombre del alumno:');
            readln(nombre);
            writeln('Ingrese la nota obtenida en el modulo EPA:');
            writeln('');
            readln(nota);
            if nota = 7 then siete:= siete + 1;
            if nota >= 8 then aprobados:= aprobados + 1;
        end;
        until (nombre = 'Zidane Zinedine');
    writeln('La cantidad de alumnos aprobados (nota 8 o mayor) es: ', aprobados);
    writeln('La cantidad de alumnos que obtuvieron un 7 como nota es: ', siete);
    writeln('Presione Enter para salir del programa.');
    readln;
end.