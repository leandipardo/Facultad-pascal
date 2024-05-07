```pascal
program EjemploSintaxis; // Declaración del programa

var
  // Declaración de variables
  numero: integer;
  resultado: integer;
  opcion: char;
  nombre: string;

begin
  // Asignación de valores a las variables
  numero := 10;
  nombre := 'Juan';

  // Estructura de control: if-then-else
  if numero > 0 then
    writeln('El número es positivo')
  else if numero < 0 then
    writeln('El número es negativo')
  else
    writeln('El número es cero');

  // Estructura de control: case-of
  case numero of
    1: writeln('El número es uno');
    2: writeln('El número es dos');
    3: writeln('El número es tres');
  else
    writeln('El número es otro valor');
  end;

  // Estructura de control: while-do
  while numero > 0 do
  begin
    resultado := resultado + numero;
    numero := numero - 1;
  end;

  // Estructura de control: repeat-until
  repeat
    resultado := resultado + numero;
    numero := numero - 1;
  until numero = 0;

  // Estructura de control: for
  for numero := 1 to 5 do
  begin
    resultado := resultado + numero;
  end;

  // Estructura de control: for con paso personalizado
  for numero := 10 downto 1 do
  begin
    resultado := resultado + numero;
  end;

  // Entrada de datos desde el usuario
  writeln('¿Cuál es tu nombre?');
  readln(nombre);
  writeln('Hola, ', nombre);

  // Tipos de datos y conversión de tipos
  opcion := 'S';
  writeln('El tipo de dato de opcion es: ', typeof(opcion));
  writeln('El valor de opcion como entero es: ', ord(opcion));

  // Finalización del programa
  writeln('El resultado final es: ', resultado);
end.