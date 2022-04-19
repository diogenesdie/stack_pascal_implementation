program StackHandler;
uses StackUnit in 'StackUnit.pas';

var i : integer;

begin
    init(s);
    for i := 1 to 5 do
    begin
        push(s, i);
        writeln('Added: ', i);
    end;

    writeln('Top: ', top(s));

    for i := 1 to 5 do
    begin
        writeln('Remove: ', pop(s));
    end;

    print(s);
end.