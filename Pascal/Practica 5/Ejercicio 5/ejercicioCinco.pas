// De acuerdo a los valores de la tabla que indica la cantidad de bytes que ocupa la representación
// interna de cada tipo de dato en Pascal, calcular el tamaño de memoria en los puntos señalados a partir
// de(I), suponiendo que las variables del programa ya están declaradas y se cuenta con 400.000 bytes
// libres. Justificar mediante prueba de escritorio.
Program Alocacion_Dinamica;
Type
TEmpleado = record
sucursal: char;
apellido: string[25];
correoElectronico: string[40];
sueldo: real;
end;

Str50 = string[50];

Var
alguien: TEmpleado;
PtrEmpleado: ^TEmpleado;
Begin
{Suponer que en este punto se cuenta con 400.000 bytes de memoria disponible (I)}
Readln( alguien.apellido );
{Pensar si la lectura anterior ha hecho variar la cantidad de memoria (II) ---- NO}
New( PtrEmpleado );
{¿Cuánta memoria disponible hay ahora? (III) --- 399.920 bytes}
Readln( PtrEmpleado^.Sucursal, PtrEmpleado^.apellido );
Readln( PtrEmpleado^.correoElectronico, PtrEmpleado^.sueldo );
{¿Cuánta memoria disponible hay ahora? (IV) --- 399.920 bytes}
Dispose( PtrEmpleado );
{¿Cuánta memoria disponible hay ahora? (V) --- 399.996 bytes}
end.