﻿unit TD.Views.Principal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  System.UITypes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  cxGraphics,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  Vcl.Menus,
  dxSkinsCore,
  dxSkinsDefaultPainters,
  Vcl.StdCtrls,
  cxButtons,
  dxGDIPlusClasses,
  TD.Controllers.Sessao,
  TD.Services.Conexao;

type
  TTDViewsPrincipal = class(TForm)
    pnHeader: TPanel;
    pnMenu: TPanel;
    pnContent: TPanel;
    Image1: TImage;
    btnSair: TcxButton;
    btnUsuarios: TcxButton;
    lblUsuario: TLabel;
    procedure btnSairClick(Sender: TObject);
    procedure btnUsuariosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnTarefasClick(Sender: TObject);
  private
    FConexao: iServiceConexao;
  public

  end;

var
  TDViewsPrincipal: TTDViewsPrincipal;

implementation

uses
  TD.Views.Usuario.Login, TD.Views.Task.Listagem, TD.Views.Usuario.Adicionar;

{$R *.dfm}

procedure TTDViewsPrincipal.btnSairClick(Sender: TObject);
begin
  if MessageDlg(
    'Você tem certeza que deseja sair?',
    mtConfirmation,
    mbYesNo,
    0
  ) = mrYes then
  begin
    Close;
  end;
end;

procedure TTDViewsPrincipal.btnTarefasClick(Sender: TObject);
begin
  if Assigned(FConfig) then FreeAndNil(FConfig);
  if not Assigned(FTarefa) then
    Application.CreateForm(TTDViewsTaskListagem, TDViewsTaskListagem);

  FTarefa.Parent := pnContent;
  FTarefa.Show;
end;

procedure TTDViewsPrincipal.btnUsuariosClick(Sender: TObject);
begin
  if Assigned(FTarefa) then FreeAndNil(FTarefa);
  if not Assigned(FConfig) then
    Application.CreateForm(TTDViewsUsuarioAdicionar, TDViewsUsuarioAdicionar);

  FConfig.Parent := pnContent;
  FConfig.Show;
end;


procedure TTDViewsPrincipal.FormCreate(Sender: TObject);
begin
  KeyPreview := true;

  try
  FConexao := TServiceConexao
    .New
    .Conectar;
  except
    on e: TConexaoError do
    begin
      MessageDlg(e.Message, mtError, [mbOK], 0);
      Application.Terminate;
    end;
  end;
end;

procedure TTDViewsPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
      if MessageDlg('Deseja realmente sair', mtConfirmation , mbYesNo , 0) = mrYes then Close;
end;

end.
