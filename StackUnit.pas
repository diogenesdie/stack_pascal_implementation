unit StackUnit;

interface 
const MAX = 5;

type Elem = integer;
     Stack = array[0..MAX] of Elem;

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
    s[0] := 0;
end;

procedure print(var s: Stack);
var i: integer;
begin
    for i := 1 to s[0] do
        write(s[i], ' ');
    writeln;
end;

function isEmpty(var s:Stack):boolean;
begin
    if s[0] = 0 then
        isEmpty := true
    else
        isEmpty := false;
end;

function isFull(var s:Stack):boolean;
begin
    if s[0] = MAX then
        isFull := true
    else
        isFull := false;
end;

function top (var s:Stack):Elem;
begin
    if isEmpty(s) then
        writeln('Stack is empty')
    else
        Top := s[s[0]];
end;

procedure push(var s:Stack; x:Elem);
begin
    if isFull(s) then
        writeln('Stack overflow')
    else
    begin
        s[0] := s[0] + 1;
        s[s[0]] := x;
    end;
end;

function pop(var s:Stack):Elem;
begin
    if isEmpty(s) then
        writeln('Stack is empty')
    else
    begin
        pop := s[s[0]];
        s[0] := s[0] - 1;
    end;
end;

end.