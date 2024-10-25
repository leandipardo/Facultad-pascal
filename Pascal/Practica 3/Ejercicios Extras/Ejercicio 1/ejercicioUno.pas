// Enunciado:
// Desarrolla un programa en Pascal que lea los datos de varios estudiantes en una universidad. De cada estudiante se lee:

// Número de legajo.
// Nombre (string de hasta 50 caracteres).
// Edad.
// Promedio (número real).
// El programa debe almacenar estos datos en un registro y permitir al usuario ingresar hasta que desee (por ejemplo, hasta que el legajo sea 0). Luego, el programa debe mostrar:

// El promedio general de todos los estudiantes.
// El estudiante con el mayor promedio y sus datos.
// El estudiante más joven y sus datos.

program estudiantesUni;
type
    str50:string[50];
    estudiante = record
        nombre:str50;
        edad:integer;
        promedio:real;
    end;
procedure leer();
begin
end;
procedure evaluar();
begin
end;
var
promedioGral:real;
mayorPromedio:estudiante;
begin
    
end.