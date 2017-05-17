unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms3D, FMX.Types3D, FMX.Forms, FMX.Graphics, 
  FMX.Dialogs, System.Math.Vectors, FMX.Edit, FMX.Controls.Presentation,
  FMX.StdCtrls, FMX.Layouts, FMX.ListBox, FMX.Controls3D, FMX.Layers3D;

type
  TForm1 = class(TForm3D)
    Layer3D1: TLayer3D;
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Form3DCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
implementation

{$R *.fmx}

uses clsstack;

var
Stack : TStack;

Procedure ListboxUpdatebyStack(const aStack : TStack;Listbox : TListbox);
var i : integer;
begin
  Listbox.Items.Clear;
  for i := 0 to aStack.Top do begin
    listbox.Items.Add(astack.data[i]);
  end;
end;
procedure TForm1.Button1Click(Sender: TObject);
begin
  Stack.Push(Edit1.Text);
  ListboxUpdatebyStack(Stack,Listbox1);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Stack.Pop;
  ListboxUpdatebyStack(Stack,Listbox1);
end;

procedure TForm1.Form3DCreate(Sender: TObject);
begin
  Stack := TStack.Create();
end;

end.
