unit clsstack;

interface

uses
System.SysUtils,Winapi.Windows;

type TStack = class

 public
   data : Array of String;
   Top : integer;
   constructor Create();              overload;
   constructor Create(size: integer); overload;
   Procedure Push(inputData : String);
   Procedure Pop();
   Function isEmpty():Boolean;
end;

implementation


constructor TStack.Create;
begin
  Top := -1;
end;

constructor TStack.Create(size: integer);
begin
  Top := -1;
  SetLength(data,size);
end;

Procedure TStack.Push(inputData : String);
begin
  Inc(top);
  SetLength(data,top+1);
  data[top] := inputdata;
end;

Procedure TStack.Pop();
begin
  if not isEmpty then begin
    SetLength(data,top);
    Dec(top);
  end
  else begin
    Messagebox(0,'Stack is Empty','ERROR',MB_OK+MB_ICONERROR);
  end;
end;

Function TStack.isEmpty:Boolean;
begin
  if top <= -1 then Result := True;
end;

end.
