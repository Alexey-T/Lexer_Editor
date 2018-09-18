object fmApp: TfmApp
  Left = 312
  Top = 475
  BorderStyle = bsDialog
  Caption = 'Lexer Editor'
  ClientHeight = 225
  ClientWidth = 465
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object mmoLog: TMemo
    Left = 8
    Top = 0
    Width = 449
    Height = 177
    ReadOnly = True
    TabOrder = 0
  end
  object btnEdit: TButton
    Left = 96
    Top = 192
    Width = 137
    Height = 25
    Caption = 'Edit library...'
    TabOrder = 1
    OnClick = btnEditClick
  end
  object btnCancel: TButton
    Left = 240
    Top = 192
    Width = 129
    Height = 25
    Caption = 'Close'
    TabOrder = 2
    OnClick = btnCancelClick
  end
  object ilImagesTree: TImageList
    AllocBy = 10
    Left = 248
    Top = 48
    Bitmap = {
      494C010108000C000C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000848484008484840084848400C6C6C60084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      840084848400FFFFFF00C6C6C600FFFFFF00C6C6C60084848400848484000000
      0000000000000000000000000000000000000000000000000000000000003131
      3100212121000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008484840000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C600FFFFFF00C6C6C600FFFFFF00C6C6C600C6C6C60084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000080808000000000000000000000000000000000010101000000000002121
      2100212121000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400000000008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400000000008484
      840084848400848484008484840000000000000000000000000084848400FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C60084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000080808003131310000000000000000000000000000000000101010002121
      2100000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000840000000000008484840000FF000000FF
      000000FF000000FF000084848400000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000848400000000008484840000FFFF0000FF
      FF0000FFFF0000FFFF008484840000000000000000000000000084848400C6C6
      C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C60084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000080808001010100000000000000000000000000000000000393939000808
      0800313131000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000FF00000084000000000000848484000084000000FF
      000000FF000000FF000084848400000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF000084840000000000848484000084840000FF
      FF0000FFFF0000FFFF008484840000000000000000000000000084848400FFFF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000001818180021212100000000000000000031313100313131000000
      00000000000018181800000000000000000000000000000000008484840000FF
      000000FF000000FF0000848484000084000000000000000000000000000000FF
      000000FF000000FF0000848484000000000000000000000000008484840000FF
      FF0000FFFF0000FFFF00848484000084840000000000000000000000000000FF
      FF0000FFFF0000FFFF008484840000000000000000000000000084848400C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000002921210021212100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      840000FF0000848484008484840000840000008400000084000000FF000000FF
      000000FF000000FF000084848400000000000000000000000000000000008484
      840000FFFF00848484008484840000848400008484000084840000FFFF0000FF
      FF0000FFFF0000FFFF008484840000000000000000000000000084848400C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000002929210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000084848400008400000084000000FF000000FF000000FF
      00000000000000FF000000000000000000000000000000000000000000000000
      0000848484000000000084848400008484000084840000FFFF0000FFFF0000FF
      FF000000000000FFFF0000000000000000000000000000000000000000008484
      8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600848484008484840000000000000000000000000000000000000000000000
      0000181018001010100018181800080808000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000848484000084000000FF000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000848484000084840000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4A004A4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008484840000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008484840000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400C6C6C600C6C6C6008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000029292900313131000000000021212100424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008484840000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008484840000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005A5A5A00292929004A4A4A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840000000000000000000000000000000000000000008484
      8400000000000000000084848400000000000000000084848400000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000008484840000848400008484000084
      8400000000008484840084848400000000000000000000000000000000008484
      8400000000000000000000000000000000008484840000848400848484000084
      8400000000008484840000000000000000000000000000000000000000008484
      8400000000000000000084848400000000000000000084848400848484008484
      8400848484000000000000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000848484008484
      8400848484000000000000000000000000000084840000848400008484000084
      8400008484000000000084848400000000000000000000000000848484008484
      8400848484000000000000000000000000000084840084848400FFFFFF00FFFF
      FF00008484000000000084848400000000000000000084848400848484000000
      0000848484008484840000000000848484008484840000000000000000008484
      84008484840084848400848484000000000084848400FFFFFF0000FFFF00C6C6
      C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6
      C60000FFFF008484840000000000000000000000FF0000000000000000008484
      8400848484008484840084848400008484000084840000848400008484000084
      8400008484000000000084848400000000000000FF0000000000000000008484
      84008484840084848400848484000084840084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000084848400000000000000000000000000000000008484
      840084848400FFFFFF0084848400FFFFFF008484840000848400008484000000
      00008484840000000000000000000000000084848400FFFFFF00C6C6C60000FF
      FF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FF
      FF00C6C6C6008484840000000000000000000000FF000000FF000000FF000000
      00008484840084848400848484000084840000FFFF0000848400008484000084
      8400008484000084840000000000000000000000FF00848484000000FF000000
      0000848484008484840084848400008484008484840084848400FFFFFF00FFFF
      FF00FFFFFF0000848400848484000000000000000000000000000000FF000000
      0000848484008484840084848400008484000084840000848400008484000084
      84000000000000000000000000000000000084848400FFFFFF0000FFFF00C6C6
      C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6
      C60000FFFF008484840000000000000000000000FF000000FF000000FF000000
      FF000000000000000000848484000084840000FFFF0000FFFF00008484000084
      8400008484000084840000000000000000000000FF0084848400FFFFFF000000
      FF000000000000000000848484000084840000FFFF008484840084848400FFFF
      FF00FFFFFF0000848400000000000000000000000000848484000000FF000000
      FF000000000084848400848484000084840000FFFF0000848400008484000084
      84000084840084848400848484000000000084848400FFFFFF00C6C6C60000FF
      FF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FF
      FF00C6C6C6008484840000000000000000000000FF000000FF000000FF000000
      8400000084000000840000000000FFFFFF008484840000FFFF0000FFFF000084
      8400008484000000000000000000000000000000FF0084848400FFFFFF00FFFF
      FF00848484008484840000000000FFFFFF00FFFFFF0000FFFF00848484008484
      84000084840000000000000000000000000000000000000000000000FF000000
      FF000000FF0000000000000000000084840000FFFF0000FFFF00008484000084
      84000084840000000000000000000000000084848400FFFFFF0000FFFF00C6C6
      C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6
      C60000FFFF008484840000000000000000000000FF000000FF00000084000000
      84000000840000008400FFFFFF00FFFFFF00FFFFFF0000848400008484000084
      8400000000000000000000000000000000000000FF0084848400848484008484
      84000000840000008400FFFFFF00FFFFFF00FFFFFF0000848400008484000084
      84000000000000000000000000000000000000000000000000000000FF000000
      FF00000084000000840000008400FFFFFF00FFFFFF000084840000848400FFFF
      FF008484840000000000000000000000000084848400FFFFFF00C6C6C60000FF
      FF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FF
      FF00C6C6C6008484840000000000000000000000FF000000FF00000084000000
      8400000000000000000084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000FF0084848400000084000000
      8400000000000000000084848400848484008484840084848400848484008484
      84008484840000000000000000000000000000000000848484000000FF000000
      FF00000084008484840000000000848484008484840084848400848484008484
      84000000000084848400848484000000000084848400FFFFFF0000FFFF00C6C6
      C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6
      C60000FFFF008484840000000000000000000000FF0000008400000000000000
      00000000000084848400FFFFFF00FF00000084840000FF000000FF0000000000
      0000848484000000000000000000000000000000FF0000008400000000000000
      0000000000008484840084848400FF00000084840000FF000000FF0000000000
      00008484840000000000000000000000000000000000000000000000FF000000
      8400FFFFFF00FFFFFF0084848400FF00000084840000FF000000000000008484
      84008484840000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFFFF00FF000000FF000000FF0000000000
      0000848484000000000000000000000000000000000000000000000000000000
      000000000000FFFF000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000848484000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00848484008484000084840000FF000000000000008484
      84008484840000000000000000000000000084848400C6C6C60000FFFF00C6C6
      C60000FFFF00C6C6C60000FFFF00C6C6C6008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      00000000000000000000000000008484000084840000FF000000FF0000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000848484000000000000000000000000000000000084848400848484000000
      000084848400848484000000000084848400FF000000FF000000000000008484
      8400000000008484840084848400000000000000000084848400C6C6C60000FF
      FF00C6C6C60000FFFF00C6C6C600848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFFFF00FF000000FF000000FF0000000000
      0000848484000000000000000000000000000000000000000000000000000000
      000000000000FFFF000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000848484000000000000000000000000000000000000000000000000008484
      84000000000000000000848484008484000084840000FF000000840000000000
      0000848484000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008484000084840000FF000000FF0000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008484840084848400848484008400
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000084848400000000000000000084848400000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFF
      F81FDFFFFFFFFFFFE00FE7FFFC7FFC7FC007F727F821F821C003F38FF001F001
      C003F3C7E001E001C003F193C001C001C003F9FFE001E001C003F9FFF40BF40B
      E003F07FFC1FFC1FF00FFCFFFC3FFC3FF83FFC9FFE7FFE7FFCFFFE3FFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFC7FFFFFFFFFF83FF83EDB7
      8001EF01EF03ED870001C701C7018001000100010001E007000100030001C007
      0001000300038001000100070007C0070001000F000FC00700010C070C078001
      000138073807C0070001FC07F807E0070003FE07FC07800180FFFC07F807EC17
      C1FFFE0FFC0FEDB7FFFFFC0FFC0FFFFF00000000000000000000000000000000
      000000000000}
  end
  object XPManifest1: TXPManifest
    Left = 288
    Top = 64
  end
end
