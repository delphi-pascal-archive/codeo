object Form1: TForm1
  Left = 232
  Top = 127
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Codeo'
  ClientHeight = 393
  ClientWidth = 545
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 120
  TextHeight = 16
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 529
    Height = 97
    Caption = ' Code crypting '
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 126
      Height = 16
      Caption = 'The keyword phrase:'
    end
    object Label2: TLabel
      Left = 120
      Top = 64
      Width = 18
      Height = 16
      Caption = 'X1:'
    end
    object Label3: TLabel
      Left = 392
      Top = 64
      Width = 18
      Height = 16
      Caption = 'X2:'
    end
    object Edit1: TEdit
      Left = 152
      Top = 24
      Width = 361
      Height = 25
      TabOrder = 0
      Text = 'crypter from www.delphisources.ru'
    end
    object x1: TSpinEdit
      Left = 152
      Top = 56
      Width = 97
      Height = 26
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = -4
    end
    object x2: TSpinEdit
      Left = 416
      Top = 56
      Width = 97
      Height = 26
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Value = 3
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 112
    Width = 529
    Height = 273
    Caption = ' Crypt / Decrypt text '
    TabOrder = 1
    object Memo1: TMemo
      Left = 16
      Top = 24
      Width = 241
      Height = 201
      Lines.Strings = (
        'function Tform1.VigenereCrypt(password,texte:string):string;'
        'var i,nb:integer;'
        '    tmp:string;'
        'begin'
        '  tmp:='#39#39';'
        '  nb:=1;'
        '  for i:=1 to length(texte) do'
        '    begin'
        '      tmp:=tmp+chr(ord(texte[i])+ord(password[nb]));'
        '      nb:=nb+1;'
        '      if nb>length(password) then'
        '        begin'
        '          nb:=1;'
        '        end;'
        '    end;'
        '  VigenereCrypt:=tmp;'
        'end;')
      ScrollBars = ssBoth
      TabOrder = 0
      WordWrap = False
    end
    object Memo2: TMemo
      Left = 264
      Top = 24
      Width = 249
      Height = 201
      ScrollBars = ssBoth
      TabOrder = 1
      WordWrap = False
    end
    object Button1: TButton
      Left = 16
      Top = 232
      Width = 241
      Height = 25
      Caption = 'Crypt'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 264
      Top = 232
      Width = 249
      Height = 25
      Caption = 'Decrypt'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
end
