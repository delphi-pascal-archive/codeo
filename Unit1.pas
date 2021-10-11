unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    x1: TSpinEdit;
    x2: TSpinEdit;
    GroupBox2: TGroupBox;
    Memo1: TMemo;
    Memo2: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Déclarations privées }
      function Crypter:boolean;
      function Decrypter:boolean;
      function AlgoCesar(decalage:integer;texte:string):string;
      function VigenereCrypt(password,texte:string):string;
      function VigenereDecrypt(password,texte:string):string;
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

function Tform1.AlgoCesar(decalage:integer;texte:string):string;
var tmp:string;
    i:integer;
begin
  tmp:='';
  for i:=1 to length(texte) do
    begin
      tmp:=tmp+chr(ord(texte[i])+decalage);
    end;
  AlgoCesar:=tmp;
end;

function Tform1.VigenereCrypt(password,texte:string):string;
var i,nb:integer;
    tmp:string;
begin
  tmp:='';
  nb:=1;
  for i:=1 to length(texte) do
    begin
      tmp:=tmp+chr(ord(texte[i])+ord(password[nb]));
      nb:=nb+1;
      if nb>length(password) then
        begin
          nb:=1;
        end;
    end;
  VigenereCrypt:=tmp;
end;

function Tform1.VigenereDecrypt(password,texte:string):string;
var i,nb:integer;
    tmp:string;
begin
  tmp:='';
  nb:=1;
  for i:=1 to length(texte) do
    begin
      tmp:=tmp+chr((ord(texte[i])+256)-ord(password[nb]));
      nb:=nb+1;
      if nb>length(password) then
        begin
          nb:=1;
        end;
    end;
  VigenereDecrypt:=tmp;
end;

function Tform1.Crypter:boolean;
begin
     memo2.text:=VigenereCrypt(AlgoCesar(x2.value,edit1.text),AlgoCesar((0-x1.value),memo1.text));
     if AlgoCesar(x1.value,VigenereDeCrypt(AlgoCesar(x2.value,edit1.text),memo2.text))=memo1.text then
      begin
        crypter:=true;
      end
      else
      begin
        crypter:=false;
      end;
end;

function Tform1.Decrypter:boolean;
begin
    memo1.text:=AlgoCesar(x1.value,VigenereDeCrypt(AlgoCesar(x2.value,edit1.text),memo2.text));
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
  if crypter=true then
    begin
      //showmessage('Cryptage terminé !');
    end
    else
    begin
      //showmessage('Cryptage planté, recommancez !');
    end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    memo1.text:=AlgoCesar(x1.value,VigenereDeCrypt(AlgoCesar(x2.value,edit1.text),memo2.text));
end;

end.
