unit StackUnit;

interface 
const MAX = 50;
type Elem = integer;
     Stack = record
       top: integer;
       data: array[1..MAX] of Elem;
    end;

var s: Stack;

procedure init(var s: Stack);
procedure push(var s: Stack; x: Elem);
procedure print(var s: Stack);
function pop(var s: Stack): Elem;
function isEmpty(var s: Stack): boolean;
function isFull(var s: Stack): boolean;
function top(var s: Stack): Elem;

implementation

procedure init(var s:Stack);
begin
    s.top := 0;
end;

procedure print(var s: Stack);
var i: integer;
begin
    for i := 1 to s.top do
        write(s.data[i]);
    writeln;
end;

function isEmpty(var s:Stack):boolean;
begin
    if s.top = 0 then
        isEmpty := true
    else
        isEmpty := false;
end;

function isFull(var s:Stack):boolean;
begin
    if s.top = MAX then
        isFull := true
    else
        isFull := false;
end;

function top (var s:Stack):Elem;
begin
    if isEmpty(s) then
        writeln('Stack is empty')
    else
        Top := s.data[s.top];
end;

procedure push(var s:Stack; x:Elem);
begin
    if isFull(s) then
        writeln('Stack overflow')
    else
    begin
        s.top := s.top + 1;
        s.data[s.top] := x;
    end;
end;

function pop(var s:Stack):Elem;
begin
    if isEmpty(s) then
        writeln('Stack is empty')
    else
    begin
        pop := s.data[s.top];
        s.top := s.top - 1;
    end;
end;

end.