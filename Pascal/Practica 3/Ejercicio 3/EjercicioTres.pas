// El Ministerio de Educación desea realizar un relevamiento de las 2400 escuelas primarias de la provincia de Bs. As,
// con el objetivo de evaluar si se cumple la proporción de alumnos por docente calculada por la UNESCO para el año
// 2015 (1 docente cada 23,435 alumnos). Para ello, se cuenta con información de: CUE (código único de
// establecimiento), nombre del establecimiento, cantidad de docentes, cantidad de alumnos, localidad. Se pide
// implementar un programa que procese la información y determine:
// ● Cantidad de escuelas de La Plata con una relación de alumnos por docente superior a la sugerida por UNESCO.
// ● CUE y nombre de las dos escuelas con mejor relación entre docentes y alumnos.
// El programa debe utilizar:
// a) Un módulo para la lectura de la información de la escuela.
// b) Un módulo para determinar la relación docente-alumno (esa relación se obtiene del cociente entre la cantidad
// de alumnos y la cantidad de docentes).

program RelevamientoEscuelas;

type
  Escuela = record
    CUE: string;
    nombre: string;
    docentes: integer;
    alumnos: integer;
    localidad: string;
  end;
procedure leerEscuela(var e: Escuela);
begin
  writeln('Ingrese CUE: ');
  readln(e.CUE);
  writeln('Ingrese nombre: ');
  readln(e.nombre);
  writeln('Ingrese cantidad de docentes: ');
  readln(e.docentes);
  writeln('Ingrese cantidad de alumnos: ');
  readln(e.alumnos);
  writeln('Ingrese localidad: ');
  readln(e.localidad);
end;

function relacionDocenteAlumno(docentes, alumnos: integer): real;
begin
  if docentes = 0 then
    relacionDocenteAlumno := 0
  else
    relacionDocenteAlumno := alumnos / docentes;
end;

const
  UNESCO_Relacion = 23.435;
  TOTAL_ESCUELAS = 2400;

var
  contadorLaPlata: integer;
  mejorRelacion1, mejorRelacion2: real;
  mejorEscuela1, mejorEscuela2: Escuela;
  totalEscuelas: integer;
  relacion: real;
  escuelaActual: Escuela;

begin
  contadorLaPlata := 0;
  mejorRelacion1 := MaxInt;
  mejorRelacion2 := MaxInt;
  totalEscuelas := 0;

  while totalEscuelas < TOTAL_ESCUELAS do
  begin
    leerEscuela(escuelaActual);
    relacion := relacionDocenteAlumno(escuelaActual.docentes, escuelaActual.alumnos);

    if (escuelaActual.localidad = 'La Plata') and (relacion > UNESCO_Relacion) then
      inc(contadorLaPlata);

    if relacion < mejorRelacion1 then
    begin
      mejorRelacion2 := mejorRelacion1;
      mejorEscuela2 := mejorEscuela1;
      mejorRelacion1 := relacion;
      mejorEscuela1 := escuelaActual;
    end
    else if relacion < mejorRelacion2 then
    begin
      mejorRelacion2 := relacion;
      mejorEscuela2 := escuelaActual;
    end;

    inc(totalEscuelas);
  end;

  writeln('Cantidad de escuelas en La Plata con relación superior a UNESCO: ', contadorLaPlata);
  writeln('Mejores relaciones:');
  writeln('1. ', mejorEscuela1.CUE, ' - ', mejorEscuela1.nombre);
  writeln('2. ', mejorEscuela2.CUE, ' - ', mejorEscuela2.nombre);
end.