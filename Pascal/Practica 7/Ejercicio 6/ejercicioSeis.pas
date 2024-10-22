// 10. Una empresa de sistemas está desarrollando un software para organizar listas de espera de clientes. Su
// funcionamiento es muy sencillo: cuando un cliente ingresa al local, se registra su DNI y se le entrega un
// número (que es el siguiente al último número entregado). El cliente quedará esperando a ser llamado por su
// número, en cuyo caso sale de la lista de espera. Se pide:


// a. Definir una estructura de datos apropiada para representar la lista de espera de clientes.


// b. Implementar el módulo RecibirCliente, que recibe como parámetro el DNI del cliente y la lista de clientes
// en espera, asigna un número al cliente y retorna la lista de espera actualizada.


// c. Implementar el módulo AtenderCliente, que recibe como parámetro la lista de clientes en espera, y retorna
// el número y DNI del cliente a ser atendido y la lista actualizada. El cliente atendido debe eliminarse de la lista
// de espera.


// d. Implementar un programa que simule la atención de los clientes. En dicho programa, primero llegarán
// todos los clientes juntos, se les dará un número de espera a cada uno de ellos, y luego se los atenderá de a
// uno por vez. El ingreso de clientes se realiza hasta que se lee el DNI 0, que no debe procesarse.

program listaDeEspera;
type
    cliente=record
    dni:integer;
    numero:integer;
    end;

    nodo=record;
    dato:cliente;
    sig:lista;
    end;
    lista = ^nodo;

procedure RecibirCliente(var l:lista,var dni:integer);
var
nuevo,aux:lista;
num:integer;
begin
    num:=0;
    new(nuevo);
    writeln('Ingrese el dni del cliente');
    readln(dni);
    while dni <> 0 do
    begin
        nuevo^.dato.dni := dni;
        nuevo^.dato.numero := num;
        num:=num + 1;
        nuevo^.sig:=nil;
        writeln('El numero asignado al cliente con el dni: ',dni,' es: ', num);
        writeln('Ingrese el dni del cliente');
        readln(dni);
        if (l = nil) then l:= nuevo
        else 
        begin
            aux:=l;
            while (aux^.sig <> nil) do aux:=aux^.sig;
            aux^.sig=nuevo;
        end;
    end;
end;

procedure atenderCliente(l:lista);
begin  
end;

var
pri,ult:lista;
dni:integer;
begin
    pri:=nil;
    ult:=nil;
    num:=0;
    RecibirCliente(pri,dni);
    atenderCliente(pri,)
end.