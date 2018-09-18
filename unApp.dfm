object fmApp: TfmApp
  Left = 312
  Top = 475
  Width = 545
  Height = 264
  Caption = 'CudaText Lexer Editor'
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
  object mmo1: TMemo
    Left = 8
    Top = 0
    Width = 513
    Height = 177
    ReadOnly = True
    TabOrder = 0
  end
  object btnEdit: TButton
    Left = 128
    Top = 192
    Width = 137
    Height = 25
    Caption = 'Edit lexer library...'
    TabOrder = 1
    OnClick = btnEditClick
  end
  object btnCancel: TButton
    Left = 272
    Top = 192
    Width = 129
    Height = 25
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = btnCancelClick
  end
  object ilImagesTree: TImageList
    AllocBy = 10
    Left = 416
    Top = 192
  end
  object XPManifest1: TXPManifest
    Left = 456
    Top = 192
  end
end
