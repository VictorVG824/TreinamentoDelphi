object TDViewsTaskAdicionar: TTDViewsTaskAdicionar
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'TDViewsTaskAdicionar'
  ClientHeight = 441
  ClientWidth = 774
  Color = clInactiveBorder
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PrintScale = poNone
  Visible = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = -3
    Top = 0
    Width = 777
    Height = 441
    BevelOuter = bvNone
    Color = 9590329
    ParentBackground = False
    TabOrder = 0
    object lbl1: TLabel
      Left = 37
      Top = 102
      Width = 92
      Height = 15
      Caption = 'Descri'#231#227'o Tarefa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbledit: TLabel
      Left = 37
      Top = 41
      Width = 70
      Height = 15
      Caption = 'Titulo Tarefa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnClose: TcxButton
      Left = 715
      Top = 13
      Width = 35
      Height = 25
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000010000000101004000000E56AEB
        A90000000467414D410000B18F0BFC6105000000206348524D00007A26000080
        840000FA00000080E8000075300000EA6000003A98000017709CBA513C000000
        02624B47440000AA8D23320000000970485973000000600000006000F06B42CF
        0000000774494D4507E605061332157F8F2F200000008C4944415438CB9D9331
        0E80200C45C1FB2F043524782516BD8FCFA1C66802A5C8D490BE37F4B70E4A81
        10C07B677CE0BD30A538290052B248044E499810EE8F79968F6D8369D2E16501
        E0CCF9E9B5489AF0B7A12EE9C29AC40CB725EB6A86EB127DB88AF115E9C08E54
        0676D79D889BD336EF8936EDAEC4125553329273550231FE3FA6181D1CC7FF73
        DEF70B9CDE7E8F4BCB869F0000002574455874646174653A6372656174650032
        3032322D30352D30365431393A35303A32312B30303A3030C048003900000025
        74455874646174653A6D6F6469667900323032322D30352D30365431393A3530
        3A32312B30303A3030B115B8850000000049454E44AE426082}
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 0
      OnClick = btnCloseClick
    end
    object edtTarefa: TcxTextEdit
      Left = 37
      Top = 75
      Properties.OnValidate = edtTarefaPropertiesValidate
      TabOrder = 1
      Width = 692
    end
    object BtnAddTask: TcxButton
      Left = 0
      Top = 416
      Width = 777
      Height = 25
      Align = alBottom
      Caption = 'Cadastrar'
      Colors.Default = 9590329
      Colors.DefaultText = clWhite
      Colors.HotText = clWhite
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000010000000101004000000E56AEB
        A90000000467414D410000B18F0BFC6105000000206348524D00007A26000080
        840000FA00000080E8000075300000EA6000003A98000017709CBA513C000000
        02624B47440000AA8D23320000000970485973000000600000006000F06B42CF
        0000000774494D4507E6050613300BB7B670C10000019E4944415438CB8D92B1
        4BC27110C5EF2B516491216911D5E25AE016B448823558D012D8D4E0288182FF
        406B04890D126DE2DA14A883084E41AB2081448164103FA1428496FB3468A0FE
        547AE3F1DEBBC7BB131902CCCD412C86964AF0F101DFDF50AF43368B86423209
        100C42A3813E3C4024023E1FEAF582DF8F2693F0F2028502BAB46417EBC101DA
        6E4324327681CECCC0F535D4EB0326E8FA3A5816BAB727FF00A4D3502CF60D32
        1948A5ECC49313747BDB9E647A1A7D7E46F7F77BC4D353D4EBB5130F0FC1B260
        67C76E9E48402EF78FB8E130B45A10080C9A6F6DC1EBAB814A45585B9B6CB3B0
        20C6ED1696978DC3B2BAC66EB748B3392544A3625CAEF1628F47E4E646E4EEEE
        4FDCC5E2A2C8E767DF158CB1C75F59815A0DBDB8B0F7737C0CE5728F787F0FD1
        A89D747909E7E723BBD17C1ECECE7A06C120BCBD8DFCB091C51E1D41A301B3B3
        7DC3540AAA55585D9D2CDEDD1D75150187A3FBA6CD26C4E3E0740E46DED880AB
        ABEE5F84C3E337682804950A743AF0F808E5323C3DC1D7177A7B8B0E9EDC8C37
        F278C46C6E0AF3F322EFEF22D5AA71FCFC0CF37E013D9C306A72EBCAD7000000
        2574455874646174653A63726561746500323032322D30352D30365431393A34
        383A31312B30303A30309C9E98EE0000002574455874646174653A6D6F646966
        7900323032322D30352D30365431393A34383A31312B30303A3030EDC3205200
        00000049454E44AE426082}
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 2
      OnClick = BtnAddTaskClick
    end
    object edtDescricao: TcxTextEdit
      Left = 37
      Top = 243
      Properties.OnValidate = edtDescricaoPropertiesValidate
      TabOrder = 3
      Width = 692
    end
  end
end
