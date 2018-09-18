object fmLexerProp: TfmLexerProp
  Left = 332
  Top = 191
  Width = 617
  Height = 680
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Lexer properties'
  Color = clBtnFace
  Constraints.MinHeight = 450
  Constraints.MinWidth = 500
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  ShowHint = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 365
    Width = 601
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 601
    Height = 365
    ActivePage = TabCommon
    Align = alTop
    TabOrder = 0
    object TabCommon: TTabSheet
      Caption = 'Common'
      ImageIndex = 4
      DesignSize = (
        593
        337)
      object Label4: TLabel
        Left = 4
        Top = 64
        Width = 193
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Caption = 'Token type names'
        Color = clActiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -12
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label30: TLabel
        Left = 206
        Top = 88
        Width = 99
        Height = 13
        Caption = 'Selection mark style:'
        FocusControl = ComboBox22
      end
      object Label2: TLabel
        Left = 206
        Top = 268
        Width = 232
        Height = 13
        Caption = 'Disable full refresh if text length is greater than:'
        FocusControl = Edit7
      end
      object Label3: TLabel
        Left = 206
        Top = 112
        Width = 89
        Height = 13
        Caption = 'Search mark style:'
        FocusControl = ComboBox1
      end
      object Label5: TLabel
        Left = 206
        Top = 136
        Width = 86
        Height = 13
        Caption = 'Current line style:'
        FocusControl = ComboBox2
      end
      object Label6: TLabel
        Left = 206
        Top = 64
        Width = 65
        Height = 13
        Caption = 'Default style:'
        FocusControl = ComboBox7
      end
      object Label31: TLabel
        Left = 206
        Top = 160
        Width = 96
        Height = 13
        Caption = 'Collapse mark style:'
        FocusControl = ComboBox8
      end
      object Label50: TLabel
        Left = 206
        Top = 316
        Width = 70
        Height = 13
        Caption = 'Character set:'
      end
      object Panel_Common: TPanel
        Left = 0
        Top = 0
        Width = 593
        Height = 61
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          593
          61)
        object Label33: TLabel
          Left = 4
          Top = 36
          Width = 50
          Height = 13
          Caption = 'File types:'
          FocusControl = Edit3
        end
        object Label34: TLabel
          Left = 4
          Top = 12
          Width = 60
          Height = 13
          Caption = 'Lexer name:'
          FocusControl = Edit4
        end
        object Edit3: TEdit
          Left = 152
          Top = 32
          Width = 432
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 1
        end
        object Edit4: TEdit
          Left = 152
          Top = 8
          Width = 432
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
        end
      end
      object ComboBox22: TComboBox
        Tag = 1
        Left = 376
        Top = 84
        Width = 210
        Height = 21
        Style = csDropDownList
        Anchors = [akLeft, akTop, akRight]
        ItemHeight = 13
        TabOrder = 2
        OnChange = ComboBox7Change
      end
      object CheckBox17: TCheckBox
        Left = 204
        Top = 182
        Width = 381
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Skip spaces while parsing'
        TabOrder = 6
        OnClick = CheckBox17Click
      end
      object SyntaxMemo7: TSyntaxMemo
        Left = 4
        Top = 80
        Width = 193
        Height = 253
        NonPrintedSpaces = True
        NonPrintedEol = True
        NonPrintedEolDetails = False
        SelectModeDefault = msNone
        TabList.AsString = '4'
        NonPrinted.Font.Charset = DEFAULT_CHARSET
        NonPrinted.Font.Color = clSilver
        NonPrinted.Font.Height = -11
        NonPrinted.Font.Name = 'Consolas'
        NonPrinted.Font.Style = []
        LineNumbers.Alignment = taLeftJustify
        LineNumbers.Font.Charset = DEFAULT_CHARSET
        LineNumbers.Font.Color = clWindowText
        LineNumbers.Font.Height = -12
        LineNumbers.Font.Name = 'Consolas'
        LineNumbers.Font.Style = []
        LineNumbers.Band = -1
        Gutter.Visible = False
        Gutter.Width = 20
        Gutter.ExpandButtons.Data = {
          FA000000424DFA000000000000007600000028000000180000000B0000000100
          0400000000008400000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00600000000000
          60000000000060BBBBBBBBB060EEEFFFEEE060BBBBBBBBB060EEEF0FEEE060BB
          BBBBBBB060EEEF0FEEE060FFFFFFFFF060FFFF0FFFF060F0000000F060F00000
          00F060FFFFFFFFF060FFFF0FFFF060BBBBBBBBB060EEEF0FEEE060BBBBBBBBB0
          60EEEF0FEEE060BBBBBBBBB060EEEFFFEEE0600000000000600000000000}
        Gutter.Bands = <>
        Gutter.Objects = <>
        Gutter.ExpBtnBand = -1
        Gutter.CollapsePen.Color = clGray
        Gutter.AutoSize = False
        HintProps.Font.Charset = DEFAULT_CHARSET
        HintProps.Font.Color = clWindowText
        HintProps.Font.Height = -11
        HintProps.Font.Name = 'Consolas'
        HintProps.Font.Style = []
        HintProps.Color = 13041663
        HintProps.ShowHints = [shScroll, shCollapsed, shGutter, shTokens]
        UserRanges = <>
        UndoLimit = 0
        StaplePen.Color = clGray
        DefaultStyles.SelectioMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.SelectioMark.Font.Color = clHighlightText
        DefaultStyles.SelectioMark.Font.Height = -13
        DefaultStyles.SelectioMark.Font.Name = 'Consolas'
        DefaultStyles.SelectioMark.Font.Style = []
        DefaultStyles.SelectioMark.BgColor = clHighlight
        DefaultStyles.SelectioMark.FormatType = ftColor
        DefaultStyles.SearchMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.SearchMark.Font.Color = clWhite
        DefaultStyles.SearchMark.Font.Height = -13
        DefaultStyles.SearchMark.Font.Name = 'Consolas'
        DefaultStyles.SearchMark.Font.Style = []
        DefaultStyles.SearchMark.BgColor = clBlack
        DefaultStyles.SearchMark.FormatType = ftColor
        DefaultStyles.CurrentLine.Enabled = False
        DefaultStyles.CurrentLine.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.CurrentLine.Font.Color = clWindowText
        DefaultStyles.CurrentLine.Font.Height = -13
        DefaultStyles.CurrentLine.Font.Name = 'Consolas'
        DefaultStyles.CurrentLine.Font.Style = []
        DefaultStyles.CurrentLine.FormatType = ftBackGround
        DefaultStyles.CollapseMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.CollapseMark.Font.Color = clSilver
        DefaultStyles.CollapseMark.Font.Height = -13
        DefaultStyles.CollapseMark.Font.Name = 'Consolas'
        DefaultStyles.CollapseMark.Font.Style = []
        DefaultStyles.CollapseMark.FormatType = ftColor
        DefaultStyles.CollapseMark.BorderTypeLeft = blSolid
        DefaultStyles.CollapseMark.BorderColorLeft = clSilver
        DefaultStyles.CollapseMark.BorderTypeTop = blSolid
        DefaultStyles.CollapseMark.BorderColorTop = clSilver
        DefaultStyles.CollapseMark.BorderTypeRight = blSolid
        DefaultStyles.CollapseMark.BorderColorRight = clSilver
        DefaultStyles.CollapseMark.BorderTypeBottom = blSolid
        DefaultStyles.CollapseMark.BorderColorBottom = clSilver
        SyncEditing.SyncRangeStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.SyncRangeStyle.Font.Color = clWindowText
        SyncEditing.SyncRangeStyle.Font.Height = -13
        SyncEditing.SyncRangeStyle.Font.Name = 'Consolas'
        SyncEditing.SyncRangeStyle.Font.Style = []
        SyncEditing.SyncRangeStyle.BgColor = 14745568
        SyncEditing.SyncRangeStyle.FormatType = ftBackGround
        SyncEditing.ActiveWordsStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.ActiveWordsStyle.Font.Color = clWindowText
        SyncEditing.ActiveWordsStyle.Font.Height = -13
        SyncEditing.ActiveWordsStyle.Font.Name = 'Consolas'
        SyncEditing.ActiveWordsStyle.Font.Style = []
        SyncEditing.ActiveWordsStyle.FormatType = ftBackGround
        SyncEditing.ActiveWordsStyle.BorderTypeLeft = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorLeft = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeTop = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorTop = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeRight = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorRight = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeBottom = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorBottom = clBlue
        SyncEditing.InactiveWordsStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.InactiveWordsStyle.Font.Color = clWindowText
        SyncEditing.InactiveWordsStyle.Font.Height = -13
        SyncEditing.InactiveWordsStyle.Font.Name = 'Consolas'
        SyncEditing.InactiveWordsStyle.Font.Style = []
        SyncEditing.InactiveWordsStyle.FormatType = ftBackGround
        SyncEditing.InactiveWordsStyle.BorderTypeBottom = blSolid
        SyncEditing.InactiveWordsStyle.BorderColorBottom = clBtnFace
        Options = [soOverwriteBlocks, soEnableBlockSel, soKeepCaretInText, soHideSelection, soHideDynamic, soAutoIndentMode, soBackUnindent, soGroupUndo, soDragText, soVariableHorzScrollBar]
        HorzRuler.Font.Charset = DEFAULT_CHARSET
        HorzRuler.Font.Color = clWindowText
        HorzRuler.Font.Height = -11
        HorzRuler.Font.Name = 'Consolas'
        HorzRuler.Font.Style = []
        TextMargins = <
          item
            Pen.Color = clSilver
            RulerMark = False
          end>
        Caret.Insert.Width = -2
        Caret.Overwrite.Width = 100
        Caret.ReadOnly.Width = -1
        Caret.Custom.Width = -2
        Transparent = False
        Alignment = taLeftJustify
        Anchors = [akLeft, akTop, akBottom]
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Consolas'
        Font.Style = []
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnExit = SyntaxMemo7Exit
      end
      object Edit7: TEdit
        Left = 496
        Top = 264
        Width = 90
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 11
      end
      object ComboBox1: TComboBox
        Tag = 2
        Left = 376
        Top = 108
        Width = 210
        Height = 21
        Style = csDropDownList
        Anchors = [akLeft, akTop, akRight]
        ItemHeight = 13
        TabOrder = 3
        OnChange = ComboBox7Change
      end
      object ComboBox2: TComboBox
        Tag = 3
        Left = 376
        Top = 132
        Width = 210
        Height = 21
        Style = csDropDownList
        Anchors = [akLeft, akTop, akRight]
        ItemHeight = 13
        TabOrder = 4
        OnChange = ComboBox7Change
      end
      object CheckBox2: TCheckBox
        Left = 204
        Top = 222
        Width = 381
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Restart analysis from the line start'
        TabOrder = 7
        OnClick = CheckBox2Click
      end
      object CheckBox3: TCheckBox
        Left = 204
        Top = 202
        Width = 381
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Do not skip end of line'
        TabOrder = 8
        OnClick = CheckBox3Click
      end
      object ComboBox7: TComboBox
        Left = 376
        Top = 60
        Width = 210
        Height = 21
        Style = csDropDownList
        Anchors = [akLeft, akTop, akRight]
        ItemHeight = 13
        TabOrder = 9
        OnChange = ComboBox7Change
      end
      object CheckBox28: TCheckBox
        Left = 204
        Top = 242
        Width = 381
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Always synchronized block analysis'
        TabOrder = 10
        OnClick = CheckBox2Click
      end
      object ComboBox8: TComboBox
        Tag = 4
        Left = 376
        Top = 156
        Width = 210
        Height = 21
        Style = csDropDownList
        Anchors = [akLeft, akTop, akRight]
        ItemHeight = 13
        TabOrder = 5
        OnChange = ComboBox7Change
      end
      object CharSet_Combo: TComboBox
        Left = 376
        Top = 312
        Width = 212
        Height = 21
        Style = csDropDownList
        Anchors = [akLeft, akTop, akRight]
        ItemHeight = 13
        TabOrder = 12
        OnChange = CharSet_ComboChange
      end
    end
    object TabComments: TTabSheet
      Caption = 'Commenting'
      DesignSize = (
        593
        337)
      object LabelCmtLine: TLabel
        Left = 8
        Top = 8
        Width = 102
        Height = 13
        Caption = 'Comment to line end:'
        FocusControl = EditCmtLine
      end
      object LabelCmtRange: TLabel
        Left = 8
        Top = 48
        Width = 97
        Height = 13
        Caption = 'Comment for range:'
        FocusControl = EditCmtLine
      end
      object LabelCmtFull: TLabel
        Left = 8
        Top = 88
        Width = 173
        Height = 13
        Caption = 'Comment for range, for entire lines:'
        FocusControl = EditCmtLine
      end
      object LabelStylesCmt: TLabel
        Left = 8
        Top = 176
        Width = 194
        Height = 13
        Caption = 'Styles of comments (comma-separated):'
        FocusControl = EditCmtLine
      end
      object LabelStylesStr: TLabel
        Left = 8
        Top = 216
        Width = 81
        Height = 13
        Caption = 'Styles of strings:'
        FocusControl = EditCmtLine
      end
      object EditCmtLine: TEdit
        Left = 8
        Top = 24
        Width = 97
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
      end
      object EditCmtBlock1: TEdit
        Left = 8
        Top = 64
        Width = 97
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 1
      end
      object EditCmtBlock2: TEdit
        Left = 112
        Top = 64
        Width = 97
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 2
      end
      object EditCmtLines1: TEdit
        Left = 8
        Top = 104
        Width = 97
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 3
      end
      object EditCmtLines2: TEdit
        Left = 112
        Top = 104
        Width = 97
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 4
      end
      object EditStylesComments: TEdit
        Left = 8
        Top = 192
        Width = 273
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 5
      end
      object EditStylesStrings: TEdit
        Left = 8
        Top = 232
        Width = 273
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 6
      end
    end
    object TabStyles: TTabSheet
      Caption = 'Styles'
      inline SyntColFrame1: TfmLexerItems
        Left = 0
        Top = 0
        Width = 299
        Height = 337
        Align = alClient
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = True
        inherited LB: TListBox
          Width = 299
          Height = 290
        end
        inherited Panel1: TPanel
          Width = 299
        end
        inherited Panel2: TPanel
          Top = 315
          Width = 299
          inherited Edit: TEdit
            Width = 306
          end
        end
      end
      inline SyntStyleFrame1: TfmLexerPropStyles
        Left = 299
        Top = 0
        Width = 294
        Height = 337
        Align = alRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = True
        inherited Label3: TLabel
          Anchors = [akTop]
        end
        inherited Label4: TLabel
          Anchors = [akTop]
        end
        inherited Button3: TButton
          Width = 134
          Anchors = [akTop]
        end
        inherited ColorBox2: TColorBox
          Left = 151
          Anchors = [akTop]
        end
        inherited ComboBox2: TComboBox
          Left = 151
          Anchors = [akTop]
        end
        inherited GroupBox2: TGroupBox
          inherited Label5: TLabel
            Left = 8
          end
          inherited Label6: TLabel
            Left = 8
          end
          inherited Label7: TLabel
            Left = 8
          end
          inherited Label8: TLabel
            Left = 8
          end
        end
        inherited CheckBox7: TCheckBox
          Width = 141
          Caption = '&Read only'
        end
      end
    end
    object TabParser: TTabSheet
      Caption = 'Parser'
      ImageIndex = 1
      object Splitter3: TSplitter
        Left = 189
        Top = 0
        Height = 337
      end
      inline SyntColFrame2: TfmLexerItems
        Left = 0
        Top = 0
        Width = 189
        Height = 337
        Align = alLeft
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = True
        inherited LB: TListBox
          Width = 189
          Height = 290
        end
        inherited Panel1: TPanel
          Width = 189
        end
        inherited Panel2: TPanel
          Top = 315
          Width = 189
          inherited Edit: TEdit
            Width = 192
          end
        end
      end
      object Panel3: TPanel
        Left = 192
        Top = 0
        Width = 401
        Height = 337
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Label22: TLabel
          Left = 0
          Top = 213
          Width = 401
          Height = 17
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'Regular expression'
          Color = clActiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object SyntaxMemo3: TSyntaxMemo
          Left = 0
          Top = 230
          Width = 401
          Height = 107
          NonPrintedSpaces = True
          NonPrintedEol = True
          NonPrintedEolDetails = False
          SelectModeDefault = msNone
          TabList.AsString = '4'
          NonPrinted.Font.Charset = DEFAULT_CHARSET
          NonPrinted.Font.Color = clSilver
          NonPrinted.Font.Height = -11
          NonPrinted.Font.Name = 'Consolas'
          NonPrinted.Font.Style = []
          LineNumbers.Alignment = taLeftJustify
          LineNumbers.Font.Charset = DEFAULT_CHARSET
          LineNumbers.Font.Color = clWindowText
          LineNumbers.Font.Height = -9
          LineNumbers.Font.Name = 'Consolas'
          LineNumbers.Font.Style = []
          LineNumbers.Band = -1
          Gutter.ExpandButtons.Data = {
            FA000000424DFA000000000000007600000028000000180000000B0000000100
            0400000000008400000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00600000000000
            60000000000060BBBBBBBBB060EEEFFFEEE060BBBBBBBBB060EEEF0FEEE060BB
            BBBBBBB060EEEF0FEEE060FFFFFFFFF060FFFF0FFFF060F0000000F060F00000
            00F060FFFFFFFFF060FFFF0FFFF060BBBBBBBBB060EEEF0FEEE060BBBBBBBBB0
            60EEEF0FEEE060BBBBBBBBB060EEEFFFEEE0600000000000600000000000}
          Gutter.Bands = <>
          Gutter.Objects = <>
          Gutter.ExpBtnBand = -1
          Gutter.CollapsePen.Color = clGray
          Gutter.AutoSize = False
          HintProps.Font.Charset = DEFAULT_CHARSET
          HintProps.Font.Color = clWindowText
          HintProps.Font.Height = -11
          HintProps.Font.Name = 'Consolas'
          HintProps.Font.Style = []
          HintProps.Color = 13041663
          HintProps.ShowHints = [shScroll, shCollapsed, shGutter, shTokens]
          UserRanges = <>
          UndoLimit = 0
          ScrollBars = ssHorizontal
          StaplePen.Color = clGray
          DefaultStyles.SelectioMark.Font.Charset = DEFAULT_CHARSET
          DefaultStyles.SelectioMark.Font.Color = clHighlightText
          DefaultStyles.SelectioMark.Font.Height = -13
          DefaultStyles.SelectioMark.Font.Name = 'Consolas'
          DefaultStyles.SelectioMark.Font.Style = []
          DefaultStyles.SelectioMark.BgColor = clHighlight
          DefaultStyles.SelectioMark.FormatType = ftColor
          DefaultStyles.SearchMark.Font.Charset = DEFAULT_CHARSET
          DefaultStyles.SearchMark.Font.Color = clWhite
          DefaultStyles.SearchMark.Font.Height = -13
          DefaultStyles.SearchMark.Font.Name = 'Consolas'
          DefaultStyles.SearchMark.Font.Style = []
          DefaultStyles.SearchMark.BgColor = clBlack
          DefaultStyles.SearchMark.FormatType = ftColor
          DefaultStyles.CurrentLine.Enabled = False
          DefaultStyles.CurrentLine.Font.Charset = DEFAULT_CHARSET
          DefaultStyles.CurrentLine.Font.Color = clWindowText
          DefaultStyles.CurrentLine.Font.Height = -13
          DefaultStyles.CurrentLine.Font.Name = 'Consolas'
          DefaultStyles.CurrentLine.Font.Style = []
          DefaultStyles.CurrentLine.FormatType = ftBackGround
          DefaultStyles.CollapseMark.Font.Charset = DEFAULT_CHARSET
          DefaultStyles.CollapseMark.Font.Color = clSilver
          DefaultStyles.CollapseMark.Font.Height = -13
          DefaultStyles.CollapseMark.Font.Name = 'Consolas'
          DefaultStyles.CollapseMark.Font.Style = []
          DefaultStyles.CollapseMark.FormatType = ftColor
          DefaultStyles.CollapseMark.BorderTypeLeft = blSolid
          DefaultStyles.CollapseMark.BorderColorLeft = clSilver
          DefaultStyles.CollapseMark.BorderTypeTop = blSolid
          DefaultStyles.CollapseMark.BorderColorTop = clSilver
          DefaultStyles.CollapseMark.BorderTypeRight = blSolid
          DefaultStyles.CollapseMark.BorderColorRight = clSilver
          DefaultStyles.CollapseMark.BorderTypeBottom = blSolid
          DefaultStyles.CollapseMark.BorderColorBottom = clSilver
          SyncEditing.SyncRangeStyle.Font.Charset = DEFAULT_CHARSET
          SyncEditing.SyncRangeStyle.Font.Color = clWindowText
          SyncEditing.SyncRangeStyle.Font.Height = -13
          SyncEditing.SyncRangeStyle.Font.Name = 'Consolas'
          SyncEditing.SyncRangeStyle.Font.Style = []
          SyncEditing.SyncRangeStyle.BgColor = 14745568
          SyncEditing.SyncRangeStyle.FormatType = ftBackGround
          SyncEditing.ActiveWordsStyle.Font.Charset = DEFAULT_CHARSET
          SyncEditing.ActiveWordsStyle.Font.Color = clWindowText
          SyncEditing.ActiveWordsStyle.Font.Height = -13
          SyncEditing.ActiveWordsStyle.Font.Name = 'Consolas'
          SyncEditing.ActiveWordsStyle.Font.Style = []
          SyncEditing.ActiveWordsStyle.FormatType = ftBackGround
          SyncEditing.ActiveWordsStyle.BorderTypeLeft = blSolid
          SyncEditing.ActiveWordsStyle.BorderColorLeft = clBlue
          SyncEditing.ActiveWordsStyle.BorderTypeTop = blSolid
          SyncEditing.ActiveWordsStyle.BorderColorTop = clBlue
          SyncEditing.ActiveWordsStyle.BorderTypeRight = blSolid
          SyncEditing.ActiveWordsStyle.BorderColorRight = clBlue
          SyncEditing.ActiveWordsStyle.BorderTypeBottom = blSolid
          SyncEditing.ActiveWordsStyle.BorderColorBottom = clBlue
          SyncEditing.InactiveWordsStyle.Font.Charset = DEFAULT_CHARSET
          SyncEditing.InactiveWordsStyle.Font.Color = clWindowText
          SyncEditing.InactiveWordsStyle.Font.Height = -13
          SyncEditing.InactiveWordsStyle.Font.Name = 'Consolas'
          SyncEditing.InactiveWordsStyle.Font.Style = []
          SyncEditing.InactiveWordsStyle.FormatType = ftBackGround
          SyncEditing.InactiveWordsStyle.BorderTypeBottom = blSolid
          SyncEditing.InactiveWordsStyle.BorderColorBottom = clBtnFace
          Options = [soOverwriteBlocks, soEnableBlockSel, soCopyAsRTF, soHideSelection, soHideDynamic, soAutoIndentMode, soBackUnindent, soGroupUndo, soDragText, soScrollLastLine, soSmartCaret, soVariableHorzScrollBar]
          BorderStyle = bsNone
          HorzRuler.Font.Charset = DEFAULT_CHARSET
          HorzRuler.Font.Color = clWindowText
          HorzRuler.Font.Height = -11
          HorzRuler.Font.Name = 'Consolas'
          HorzRuler.Font.Style = []
          TextMargins = <
            item
              Pen.Color = clSilver
              RulerMark = False
            end>
          Caret.Insert.Width = -2
          Caret.Overwrite.Width = 100
          Caret.ReadOnly.Width = -1
          Caret.Custom.Width = -2
          Transparent = False
          Alignment = taLeftJustify
          Align = alClient
          BevelKind = bkTile
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnExit = Memo1Exit
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 401
          Height = 213
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            401
            213)
          object Label21: TLabel
            Left = 8
            Top = 8
            Width = 54
            Height = 13
            Caption = 'Token type'
          end
          object Label29: TLabel
            Left = 8
            Top = 32
            Width = 55
            Height = 13
            Caption = 'Token style'
          end
          object Label35: TLabel
            Left = 8
            Top = 56
            Width = 59
            Height = 13
            Caption = 'Parent block'
          end
          object Label11: TLabel
            Left = 8
            Top = 80
            Width = 71
            Height = 13
            Caption = 'Position in line:'
          end
          object Label12: TLabel
            Left = 114
            Top = 80
            Width = 22
            Height = 13
            Alignment = taRightJustify
            Caption = 'from'
          end
          object Label13: TLabel
            Left = 239
            Top = 80
            Width = 10
            Height = 13
            Alignment = taRightJustify
            Caption = 'to'
          end
          object ComboBox24: TComboBox
            Left = 112
            Top = 52
            Width = 286
            Height = 21
            Style = csDropDownList
            Anchors = [akLeft, akTop, akRight]
            ItemHeight = 13
            TabOrder = 2
            OnChange = ComboBox24Change
          end
          object ComboBox17: TComboBox
            Left = 112
            Top = 4
            Width = 286
            Height = 21
            Style = csDropDownList
            Anchors = [akLeft, akTop, akRight]
            ItemHeight = 13
            TabOrder = 0
            OnChange = ComboBox17Change
            Items.Strings = (
              'Illegal char'
              'Comment'
              'Identifier'
              'Symbol'
              'String'
              'Integer const'
              'Float const'
              'Hex const'
              'Char const'
              'Preprocessor'
              'User defined 1'
              'User defined 2'
              'User defined 3'
              'User defined 4'
              'User defined 5'
              'User defined 6')
          end
          object ComboBox21: TComboBox
            Left = 112
            Top = 28
            Width = 286
            Height = 21
            Style = csDropDownList
            Anchors = [akLeft, akTop, akRight]
            ItemHeight = 13
            TabOrder = 1
            OnChange = ComboBox21Change
          end
          object CheckBox8: TCheckBox
            Left = 6
            Top = 100
            Width = 187
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Strict parent block'
            TabOrder = 3
            OnClick = CheckBox8Click
          end
          object CheckBox18: TCheckBox
            Left = 224
            Top = 100
            Width = 161
            Height = 17
            Alignment = taLeftJustify
            Anchors = [akTop, akRight]
            Caption = 'Not a parent'
            TabOrder = 4
            OnClick = CheckBox18Click
          end
          object CheckBox27: TCheckBox
            Left = 6
            Top = 116
            Width = 187
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Always enabled'
            TabOrder = 5
            OnClick = CheckBox27Click
          end
          object Edit10: TEdit
            Left = 144
            Top = 76
            Width = 49
            Height = 21
            TabOrder = 6
            OnExit = Edit10Exit
          end
          object Edit11: TEdit
            Left = 256
            Top = 76
            Width = 53
            Height = 21
            TabOrder = 7
            OnExit = Edit11Exit
          end
          inline RuleStatesFrame2: TRuleStatesFrame
            Left = 0
            Top = 134
            Width = 401
            Height = 79
            Align = alBottom
            TabOrder = 8
            TabStop = True
            inherited GroupBox1: TGroupBox
              Width = 401
              inherited Label2: TLabel
                Left = 222
              end
              inherited Edit1: TEdit
                Left = 120
                Width = 49
              end
              inherited Edit2: TEdit
                Left = 334
                Width = 58
              end
            end
            inherited GroupBox2: TGroupBox
              Width = 401
              inherited Label4: TLabel
                Left = 223
              end
              inherited Edit3: TEdit
                Left = 120
                Width = 49
              end
              inherited Edit4: TEdit
                Left = 335
                Width = 58
              end
            end
          end
        end
      end
    end
    object TabRules: TTabSheet
      Caption = 'Rules'
      ImageIndex = 2
      object Splitter2: TSplitter
        Left = 174
        Top = 0
        Height = 337
      end
      inline SyntColFrame3: TfmLexerItems
        Left = 0
        Top = 0
        Width = 174
        Height = 337
        Align = alLeft
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = True
        inherited LB: TListBox
          Width = 174
          Height = 290
        end
        inherited Panel1: TPanel
          Width = 174
        end
        inherited Panel2: TPanel
          Top = 315
          Width = 174
        end
      end
      object PageControl2: TPageControl
        Left = 177
        Top = 0
        Width = 416
        Height = 337
        ActivePage = TabRulesProp
        Align = alClient
        TabOrder = 1
        object TabRulesProp: TTabSheet
          Caption = 'Properties'
          DesignSize = (
            408
            309)
          object Label1: TLabel
            Left = 4
            Top = 56
            Width = 73
            Height = 13
            Caption = 'Identifier index'
            FocusControl = Edit1
          end
          object Label20: TLabel
            Left = 181
            Top = 56
            Width = 56
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = 'Block offset'
            FocusControl = Edit2
          end
          object Label28: TLabel
            Left = 4
            Top = 124
            Width = 98
            Height = 13
            Caption = 'Range end condition'
            FocusControl = ComboBox23
          end
          object Label36: TLabel
            Left = 4
            Top = 8
            Width = 49
            Height = 13
            Caption = 'Block type'
            FocusControl = ComboBox25
          end
          object Label37: TLabel
            Left = 4
            Top = 80
            Width = 59
            Height = 13
            Caption = 'Parent block'
            FocusControl = ComboBox26
          end
          object Label8: TLabel
            Left = 304
            Top = 56
            Width = 58
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = 'Group index'
          end
          object Label10: TLabel
            Left = 4
            Top = 124
            Width = 103
            Height = 13
            Caption = 'Range start condition'
            Visible = False
          end
          object Label14: TLabel
            Left = 4
            Top = 32
            Width = 64
            Height = 13
            Caption = 'Grammar rule'
          end
          object Label15: TLabel
            Left = 4
            Top = 124
            Width = 92
            Height = 13
            Caption = 'Change token type'
          end
          object Label23: TLabel
            Left = 4
            Top = 124
            Width = 89
            Height = 13
            Caption = 'Line break position'
            FocusControl = ComboBox18
          end
          object CheckBox13: TCheckBox
            Left = 216
            Top = 168
            Width = 184
            Height = 17
            Alignment = taLeftJustify
            Anchors = [akTop, akRight]
            Caption = 'Require same ident'
            TabOrder = 14
            OnClick = CheckBox13Click
          end
          object CheckBox9: TCheckBox
            Left = 216
            Top = 148
            Width = 184
            Height = 17
            Alignment = taLeftJustify
            Anchors = [akTop, akRight]
            Caption = 'Relative to end of condition'
            TabOrder = 13
            OnClick = CheckBox9Click
          end
          object Edit1: TEdit
            Left = 112
            Top = 52
            Width = 33
            Height = 21
            TabOrder = 2
            OnExit = Edit1Exit
          end
          object Edit2: TEdit
            Tag = 1
            Left = 241
            Top = 52
            Width = 33
            Height = 21
            Anchors = [akTop, akRight]
            TabOrder = 3
            OnExit = Edit2Exit
          end
          object ComboBox23: TComboBox
            Left = 160
            Top = 120
            Width = 240
            Height = 21
            Style = csDropDownList
            Anchors = [akLeft, akTop, akRight]
            ItemHeight = 13
            TabOrder = 8
            OnChange = ComboBox23Change
          end
          object ComboBox25: TComboBox
            Left = 112
            Top = 4
            Width = 288
            Height = 21
            Style = csDropDownList
            Anchors = [akLeft, akTop, akRight]
            ItemHeight = 13
            TabOrder = 0
            OnChange = ComboBox25Changed
            Items.Strings = (
              'Tag detector'
              'Line separator'
              'Range start'
              'Range end')
          end
          object ComboBox26: TComboBox
            Left = 112
            Top = 76
            Width = 288
            Height = 21
            Style = csDropDownList
            Anchors = [akLeft, akTop, akRight]
            ItemHeight = 13
            TabOrder = 5
            OnChange = ComboBox26Change
          end
          object CheckBox7: TCheckBox
            Left = 2
            Top = 100
            Width = 199
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Strict parent block'
            TabOrder = 6
            OnClick = CheckBox7Click
          end
          object CheckBox19: TCheckBox
            Left = 216
            Top = 100
            Width = 184
            Height = 17
            Alignment = taLeftJustify
            Anchors = [akTop, akRight]
            Caption = 'Not a parent'
            TabOrder = 7
            OnClick = CheckBox19Click
          end
          object CheckBox20: TCheckBox
            Left = 4
            Top = 168
            Width = 197
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Cancel next rules'
            TabOrder = 12
            OnClick = CheckBox20Click
          end
          object CheckBox26: TCheckBox
            Left = 4
            Top = 148
            Width = 197
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Always enabled'
            TabOrder = 11
            OnClick = CheckBox26Click
          end
          object Edit8: TEdit
            Tag = 1
            Left = 365
            Top = 52
            Width = 33
            Height = 21
            Anchors = [akTop, akRight]
            TabOrder = 4
            OnExit = Edit8Exit
          end
          object ComboBox3: TComboBox
            Left = 112
            Top = 28
            Width = 288
            Height = 21
            Style = csDropDownList
            Anchors = [akLeft, akTop, akRight]
            ItemHeight = 13
            TabOrder = 1
            OnChange = ComboBox3Change
          end
          object ComboBox4: TComboBox
            Left = 160
            Top = 120
            Width = 240
            Height = 21
            Style = csDropDownList
            Anchors = [akLeft, akTop, akRight]
            ItemHeight = 13
            TabOrder = 9
            OnChange = ComboBox4Change
          end
          object ComboBox18: TComboBox
            Left = 160
            Top = 120
            Width = 240
            Height = 21
            Style = csDropDownList
            Anchors = [akLeft, akTop, akRight]
            ItemHeight = 13
            TabOrder = 10
            OnChange = ComboBox18Change
            Items.Strings = (
              'Top'
              'Bottom')
          end
          inline RuleStatesFrame3: TRuleStatesFrame
            Left = 0
            Top = 192
            Width = 414
            Height = 85
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 15
            TabStop = True
            inherited GroupBox1: TGroupBox
              Width = 414
              inherited Label2: TLabel
                Left = 229
              end
              inherited Edit1: TEdit
                Left = 112
                Width = 57
              end
              inherited Edit2: TEdit
                Left = 335
                Width = 63
              end
            end
            inherited GroupBox2: TGroupBox
              Width = 414
              inherited Label4: TLabel
                Left = 229
              end
              inherited Edit3: TEdit
                Left = 112
                Width = 57
              end
              inherited Edit4: TEdit
                Left = 335
                Width = 63
              end
            end
          end
        end
        object TabRulesTxtRng: TTabSheet
          Caption = 'Text range'
          ImageIndex = 3
          DesignSize = (
            408
            309)
          object Label38: TLabel
            Left = 4
            Top = 12
            Width = 92
            Height = 13
            Caption = 'Name format string'
            FocusControl = Edit5
          end
          object Label39: TLabel
            Left = 4
            Top = 36
            Width = 94
            Height = 13
            Caption = 'Group format string'
            FocusControl = Edit6
          end
          object Label9: TLabel
            Left = 4
            Top = 60
            Width = 91
            Height = 13
            Caption = 'Collapsed text icon'
            FocusControl = Edit9
          end
          object Label42: TLabel
            Left = 4
            Top = 168
            Width = 85
            Height = 13
            Caption = 'Auto closing text:'
            FocusControl = ComboBox10
          end
          object Edit5: TEdit
            Left = 168
            Top = 8
            Width = 235
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 0
            OnExit = Edit5Exit
          end
          object Edit6: TEdit
            Left = 168
            Top = 32
            Width = 235
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 1
            OnExit = Edit6Exit
          end
          object Edit9: TEdit
            Left = 168
            Top = 56
            Width = 235
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 2
            OnExit = Edit9Exit
          end
          object CheckBox11: TCheckBox
            Left = 4
            Top = 84
            Width = 197
            Height = 17
            Caption = 'Close block at end of text'
            TabOrder = 3
            OnClick = CheckBox11Click
          end
          object CheckBox4: TCheckBox
            Left = 4
            Top = 104
            Width = 197
            Height = 17
            Caption = 'Self closing range'
            TabOrder = 4
            OnClick = CheckBox4Click
          end
          object CheckBox5: TCheckBox
            Left = 4
            Top = 124
            Width = 197
            Height = 17
            Caption = 'Initially closed (no end rule)'
            TabOrder = 5
            OnClick = CheckBox5Click
          end
          object CheckBox6: TCheckBox
            Left = 208
            Top = 84
            Width = 198
            Height = 17
            Anchors = [akTop, akRight]
            Caption = 'Display in syntax tree'
            TabOrder = 6
            OnClick = CheckBox6Click
          end
          object CheckBox12: TCheckBox
            Left = 208
            Top = 104
            Width = 198
            Height = 17
            Anchors = [akTop, akRight]
            Caption = 'Can not be collapsed'
            TabOrder = 7
            OnClick = CheckBox12Click
          end
          object CheckBox1: TCheckBox
            Left = 208
            Top = 124
            Width = 198
            Height = 17
            Anchors = [akTop, akRight]
            Caption = 'Draw block staple'
            TabOrder = 8
            OnClick = CheckBox1Click
          end
          object CheckBox31: TCheckBox
            Left = 4
            Top = 144
            Width = 197
            Height = 17
            Caption = 'Ignore as parent'
            TabOrder = 9
            OnClick = CheckBox31Click
          end
          object SyntaxMemo10: TSyntaxMemo
            Left = 4
            Top = 188
            Width = 399
            Height = 117
            NonPrintedSpaces = True
            NonPrintedEol = True
            NonPrintedEolDetails = False
            SelectModeDefault = msNone
            SyntaxAnalyzer = FSynt
            TabList.AsString = '4'
            NonPrinted.Font.Charset = DEFAULT_CHARSET
            NonPrinted.Font.Color = clSilver
            NonPrinted.Font.Height = -11
            NonPrinted.Font.Name = 'Consolas'
            NonPrinted.Font.Style = []
            LineNumbers.Font.Charset = DEFAULT_CHARSET
            LineNumbers.Font.Color = clWindowText
            LineNumbers.Font.Height = -9
            LineNumbers.Font.Name = 'Consolas'
            LineNumbers.Font.Style = []
            LineNumbers.Band = 0
            LineNumbers.AutoSize = True
            Gutter.Width = 7
            Gutter.ExpandButtons.Data = {
              FA000000424DFA000000000000007600000028000000120000000B0000000100
              0400000000008400000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00111111111111
              1111110000000000000000000000000000000FFFFFFF00FFFFFFF00000000FFF
              FFFF00FFF0FFF00000000FFFFFFF00FFF0FFF00000000F00000F00F00000F000
              00000FFFFFFF00FFF0FFF00000000FFFFFFF00FFF0FFF00000000FFFFFFF00FF
              FFFFF0000000000000000000000000000000111111111111111111000000}
            Gutter.Bands = <
              item
                Width = 7
              end>
            Gutter.Objects = <>
            Gutter.ExpBtnBand = -1
            Gutter.CollapsePen.Color = clGray
            Gutter.AutoSize = True
            HintProps.Font.Charset = DEFAULT_CHARSET
            HintProps.Font.Color = clWindowText
            HintProps.Font.Height = -11
            HintProps.Font.Name = 'Consolas'
            HintProps.Font.Style = []
            HintProps.Color = 13041663
            HintProps.ShowHints = [shScroll, shCollapsed, shGutter, shTokens]
            UserRanges = <>
            UndoLimit = 0
            StaplePen.Color = clGray
            DefaultStyles.SelectioMark.Font.Charset = DEFAULT_CHARSET
            DefaultStyles.SelectioMark.Font.Color = clHighlightText
            DefaultStyles.SelectioMark.Font.Height = -13
            DefaultStyles.SelectioMark.Font.Name = 'Consolas'
            DefaultStyles.SelectioMark.Font.Style = []
            DefaultStyles.SelectioMark.BgColor = clHighlight
            DefaultStyles.SelectioMark.FormatType = ftColor
            DefaultStyles.SearchMark.Font.Charset = DEFAULT_CHARSET
            DefaultStyles.SearchMark.Font.Color = clWhite
            DefaultStyles.SearchMark.Font.Height = -13
            DefaultStyles.SearchMark.Font.Name = 'Consolas'
            DefaultStyles.SearchMark.Font.Style = []
            DefaultStyles.SearchMark.BgColor = clBlack
            DefaultStyles.SearchMark.FormatType = ftColor
            DefaultStyles.CurrentLine.Enabled = False
            DefaultStyles.CurrentLine.Font.Charset = DEFAULT_CHARSET
            DefaultStyles.CurrentLine.Font.Color = clWindowText
            DefaultStyles.CurrentLine.Font.Height = -13
            DefaultStyles.CurrentLine.Font.Name = 'Consolas'
            DefaultStyles.CurrentLine.Font.Style = []
            DefaultStyles.CurrentLine.FormatType = ftBackGround
            DefaultStyles.CollapseMark.Font.Charset = DEFAULT_CHARSET
            DefaultStyles.CollapseMark.Font.Color = clSilver
            DefaultStyles.CollapseMark.Font.Height = -13
            DefaultStyles.CollapseMark.Font.Name = 'Consolas'
            DefaultStyles.CollapseMark.Font.Style = []
            DefaultStyles.CollapseMark.FormatType = ftColor
            DefaultStyles.CollapseMark.BorderTypeLeft = blSolid
            DefaultStyles.CollapseMark.BorderColorLeft = clSilver
            DefaultStyles.CollapseMark.BorderTypeTop = blSolid
            DefaultStyles.CollapseMark.BorderColorTop = clSilver
            DefaultStyles.CollapseMark.BorderTypeRight = blSolid
            DefaultStyles.CollapseMark.BorderColorRight = clSilver
            DefaultStyles.CollapseMark.BorderTypeBottom = blSolid
            DefaultStyles.CollapseMark.BorderColorBottom = clSilver
            SyncEditing.SyncRangeStyle.Font.Charset = DEFAULT_CHARSET
            SyncEditing.SyncRangeStyle.Font.Color = clWindowText
            SyncEditing.SyncRangeStyle.Font.Height = -13
            SyncEditing.SyncRangeStyle.Font.Name = 'Consolas'
            SyncEditing.SyncRangeStyle.Font.Style = []
            SyncEditing.SyncRangeStyle.BgColor = 14745568
            SyncEditing.SyncRangeStyle.FormatType = ftBackGround
            SyncEditing.ActiveWordsStyle.Font.Charset = DEFAULT_CHARSET
            SyncEditing.ActiveWordsStyle.Font.Color = clWindowText
            SyncEditing.ActiveWordsStyle.Font.Height = -13
            SyncEditing.ActiveWordsStyle.Font.Name = 'Consolas'
            SyncEditing.ActiveWordsStyle.Font.Style = []
            SyncEditing.ActiveWordsStyle.FormatType = ftBackGround
            SyncEditing.ActiveWordsStyle.BorderTypeLeft = blSolid
            SyncEditing.ActiveWordsStyle.BorderColorLeft = clBlue
            SyncEditing.ActiveWordsStyle.BorderTypeTop = blSolid
            SyncEditing.ActiveWordsStyle.BorderColorTop = clBlue
            SyncEditing.ActiveWordsStyle.BorderTypeRight = blSolid
            SyncEditing.ActiveWordsStyle.BorderColorRight = clBlue
            SyncEditing.ActiveWordsStyle.BorderTypeBottom = blSolid
            SyncEditing.ActiveWordsStyle.BorderColorBottom = clBlue
            SyncEditing.InactiveWordsStyle.Font.Charset = DEFAULT_CHARSET
            SyncEditing.InactiveWordsStyle.Font.Color = clWindowText
            SyncEditing.InactiveWordsStyle.Font.Height = -13
            SyncEditing.InactiveWordsStyle.Font.Name = 'Consolas'
            SyncEditing.InactiveWordsStyle.Font.Style = []
            SyncEditing.InactiveWordsStyle.FormatType = ftBackGround
            SyncEditing.InactiveWordsStyle.BorderTypeBottom = blSolid
            SyncEditing.InactiveWordsStyle.BorderColorBottom = clBtnFace
            Options = [soOverwriteBlocks, soEnableBlockSel, soHideSelection, soHideDynamic, soAutoIndentMode, soBackUnindent, soGroupUndo, soDragText, soScrollLastLine, soVariableHorzScrollBar]
            HorzRuler.Font.Charset = DEFAULT_CHARSET
            HorzRuler.Font.Color = clWindowText
            HorzRuler.Font.Height = -11
            HorzRuler.Font.Name = 'Consolas'
            HorzRuler.Font.Style = []
            HorzRuler.Color = clBtnFace
            TextMargins = <
              item
                Pen.Color = clSilver
                RulerMark = False
              end>
            Caret.Insert.Width = -2
            Caret.Overwrite.Width = 100
            Caret.ReadOnly.Width = -1
            Caret.Custom.Width = -2
            Transparent = False
            Alignment = taLeftJustify
            Anchors = [akLeft, akTop, akRight, akBottom]
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Consolas'
            Font.Style = []
            ParentColor = False
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 11
            OnTextChanged = SyntaxMemo10TextChanged
          end
          object ComboBox10: TComboBox
            Left = 168
            Top = 164
            Width = 235
            Height = 21
            Style = csDropDownList
            Anchors = [akLeft, akTop, akRight]
            ItemHeight = 13
            TabOrder = 10
            OnChange = ComboBox10Change
            Items.Strings = (
              'Disabled'
              'Close nearest range'
              'Close opened range')
          end
        end
        object TabRulesHilite: TTabSheet
          Caption = 'Highlight'
          ImageIndex = 2
          DesignSize = (
            408
            309)
          object Label27: TLabel
            Left = 2
            Top = 8
            Width = 24
            Height = 13
            Caption = 'Style'
            FocusControl = ComboBox20
          end
          object Label44: TLabel
            Left = 2
            Top = 32
            Width = 66
            Height = 13
            Caption = 'Highlight type'
          end
          object ComboBox20: TComboBox
            Left = 136
            Top = 4
            Width = 269
            Height = 21
            Style = csDropDownList
            Anchors = [akLeft, akTop, akRight]
            ItemHeight = 13
            TabOrder = 0
            OnChange = ComboBox20Change
          end
          object CheckBox14: TCheckBox
            Left = 2
            Top = 52
            Width = 199
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Highlight lines of block'
            TabOrder = 2
            OnClick = CheckBox14Click
          end
          object CheckBox15: TCheckBox
            Left = 216
            Top = 52
            Width = 187
            Height = 17
            Alignment = taLeftJustify
            Anchors = [akTop, akRight]
            Caption = 'Invert colors of selection'
            TabOrder = 3
            OnClick = CheckBox15Click
          end
          object GroupBox4: TGroupBox
            Left = 0
            Top = 72
            Width = 405
            Height = 61
            Anchors = [akLeft, akTop, akRight]
            Caption = 'Active highlighting'
            TabOrder = 4
            DesignSize = (
              405
              61)
            object Label43: TLabel
              Left = 8
              Top = 20
              Width = 67
              Height = 13
              Caption = 'Caret position'
            end
            object ComboBox28: TComboBox
              Left = 136
              Top = 16
              Width = 265
              Height = 21
              Style = csDropDownList
              Anchors = [akLeft, akTop, akRight]
              ItemHeight = 13
              TabOrder = 0
              OnChange = ComboBox28Change
              Items.Strings = (
                'Any position (always)'
                'Bounds of the range'
                'Bounding tokens'
                'In the range'
                'Begin of bounding tokens'
                'Out of range')
            end
            object CheckBox16: TCheckBox
              Left = 8
              Top = 40
              Width = 249
              Height = 17
              Caption = 'Select minimal range'
              TabOrder = 1
              OnClick = CheckBox16Click
            end
          end
          object ComboBox29: TComboBox
            Left = 136
            Top = 28
            Width = 269
            Height = 21
            Style = csDropDownList
            Anchors = [akLeft, akTop, akRight]
            ItemHeight = 13
            TabOrder = 1
            OnChange = ComboBox29Change
            Items.Strings = (
              'Disabled'
              'Only bounding tokens'
              'All tokens without bound'
              'All range')
          end
          object GroupBox2: TGroupBox
            Left = 0
            Top = 140
            Width = 405
            Height = 85
            Anchors = [akLeft, akTop, akRight]
            Caption = 'Syntax tree decoration'
            TabOrder = 5
            DesignSize = (
              405
              85)
            object Label16: TLabel
              Left = 8
              Top = 36
              Width = 26
              Height = 13
              Caption = 'Item:'
            end
            object Label17: TLabel
              Left = 8
              Top = 60
              Width = 33
              Height = 13
              Caption = 'Group:'
            end
            object Label18: TLabel
              Left = 303
              Top = 16
              Width = 59
              Height = 13
              Anchors = [akTop, akRight]
              Caption = 'Image index'
            end
            object Label19: TLabel
              Left = 76
              Top = 16
              Width = 24
              Height = 13
              Caption = 'Style'
            end
            object ComboBox5: TComboBox
              Left = 72
              Top = 32
              Width = 224
              Height = 21
              Style = csDropDownList
              Anchors = [akLeft, akTop, akRight]
              ItemHeight = 13
              TabOrder = 0
              OnChange = ComboBox5Change
            end
            object ComboBox6: TComboBox
              Left = 72
              Top = 56
              Width = 224
              Height = 21
              Style = csDropDownList
              Anchors = [akLeft, akTop, akRight]
              ItemHeight = 13
              TabOrder = 1
              OnChange = ComboBox6Change
            end
            object Edit12: TEdit
              Left = 303
              Top = 32
              Width = 97
              Height = 21
              Anchors = [akTop, akRight]
              TabOrder = 2
              OnExit = Edit12Exit
            end
            object Edit13: TEdit
              Left = 303
              Top = 56
              Width = 97
              Height = 21
              Anchors = [akTop, akRight]
              TabOrder = 3
              OnExit = Edit13Exit
            end
          end
          object GroupBox1: TGroupBox
            Left = 0
            Top = 228
            Width = 405
            Height = 65
            Anchors = [akLeft, akTop, akRight]
            Caption = 'Pen'
            TabOrder = 6
            DesignSize = (
              405
              65)
            object Label32: TLabel
              Left = 8
              Top = 40
              Width = 28
              Height = 13
              Caption = 'Width'
              FocusControl = Edit15
            end
            object Label40: TLabel
              Left = 132
              Top = 16
              Width = 25
              Height = 13
              Caption = 'Color'
            end
            object Label41: TLabel
              Left = 132
              Top = 40
              Width = 24
              Height = 13
              Caption = 'Style'
            end
            object CheckBox30: TCheckBox
              Left = 8
              Top = 16
              Width = 117
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Use custom pen'
              TabOrder = 0
              OnClick = CheckBox30Click
            end
            object Edit15: TEdit
              Left = 64
              Top = 36
              Width = 61
              Height = 21
              TabOrder = 1
              OnExit = Edit15Exit
            end
            object ColorBox1: TColorBox
              Left = 200
              Top = 12
              Width = 197
              Height = 22
              Anchors = [akLeft, akTop, akRight]
              ItemHeight = 16
              TabOrder = 2
              OnChange = ColorBox1Change
            end
            object ComboBox9: TComboBox
              Left = 200
              Top = 36
              Width = 197
              Height = 21
              Style = csDropDownList
              Anchors = [akLeft, akTop, akRight]
              ItemHeight = 13
              TabOrder = 3
              OnChange = ComboBox9Change
              Items.Strings = (
                'Solid'
                'Dash'
                'Dot'
                'DashDot'
                'DashDotDot'
                'Clear'
                'InsideFrame')
            end
          end
        end
        object TabRulesCond: TTabSheet
          Caption = 'Conditions'
          ImageIndex = 2
          object GroupBox5: TGroupBox
            Left = 0
            Top = 0
            Width = 408
            Height = 309
            Align = alClient
            Caption = ' Conditions '
            TabOrder = 0
            object Panel5: TPanel
              Left = 2
              Top = 15
              Width = 185
              Height = 292
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Panel7: TPanel
                Left = 0
                Top = 0
                Width = 185
                Height = 153
                Align = alTop
                BevelOuter = bvLowered
                TabOrder = 0
                object Label24: TLabel
                  Left = 1
                  Top = 1
                  Width = 183
                  Height = 15
                  Align = alTop
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Index'
                  Color = clActiveCaption
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -12
                  Font.Name = 'Consolas'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                end
                object SpeedButton1: TSpeedButton
                  Left = 159
                  Top = 16
                  Width = 23
                  Height = 22
                  Caption = '+'
                  Flat = True
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Consolas'
                  Font.Style = [fsBold]
                  ParentFont = False
                  OnClick = SpeedButton1Click
                end
                object SpeedButton2: TSpeedButton
                  Left = 159
                  Top = 42
                  Width = 23
                  Height = 22
                  Caption = '-'
                  Flat = True
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Consolas'
                  Font.Style = [fsBold]
                  ParentFont = False
                  OnClick = SpeedButton2Click
                end
                object Label25: TLabel
                  Left = 4
                  Top = 131
                  Width = 45
                  Height = 13
                  Caption = 'Condition'
                  FocusControl = ComboBox19
                end
                object ListBox1: TListBox
                  Left = 3
                  Top = 18
                  Width = 154
                  Height = 89
                  Color = 15132390
                  DragMode = dmAutomatic
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Consolas'
                  Font.Style = []
                  ItemHeight = 14
                  ParentFont = False
                  TabOrder = 0
                  OnClick = ListBox1Click
                  OnDragDrop = ListBox1DragDrop
                  OnDragOver = ListBox1DragOver
                end
                object CheckBox10: TCheckBox
                  Left = 5
                  Top = 109
                  Width = 175
                  Height = 17
                  Alignment = taLeftJustify
                  Caption = 'Ignore case'
                  TabOrder = 1
                  OnClick = CheckBox10Click
                end
                object ComboBox19: TComboBox
                  Left = 80
                  Top = 128
                  Width = 103
                  Height = 21
                  Style = csDropDownList
                  ItemHeight = 13
                  TabOrder = 2
                  OnChange = ComboBox19Change
                  Items.Strings = (
                    'Equal'
                    'Not equal'
                    'Mask'
                    'Skip tokens'
                    'Strict mask')
                end
              end
              object SyntaxMemo2: TSyntaxMemo
                Left = 0
                Top = 153
                Width = 185
                Height = 139
                Cursor = crArrow
                NonPrintedSpaces = True
                NonPrintedEol = True
                NonPrintedEolDetails = False
                SelectModeDefault = msNone
                TabList.AsString = '4'
                NonPrinted.Font.Charset = DEFAULT_CHARSET
                NonPrinted.Font.Color = clSilver
                NonPrinted.Font.Height = -11
                NonPrinted.Font.Name = 'Consolas'
                NonPrinted.Font.Style = []
                LineNumbers.UnderColor = clBlack
                LineNumbers.Alignment = taLeftJustify
                LineNumbers.Font.Charset = DEFAULT_CHARSET
                LineNumbers.Font.Color = clWindowText
                LineNumbers.Font.Height = -9
                LineNumbers.Font.Name = 'Consolas'
                LineNumbers.Font.Style = []
                LineNumbers.Band = 1
                Gutter.Images = ImageList1
                Gutter.ExpandButtons.Data = {
                  FA000000424DFA000000000000007600000028000000180000000B0000000100
                  0400000000008400000000000000000000001000000000000000000000000000
                  8000008000000080800080000000800080008080000080808000C0C0C0000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00600000000000
                  60000000000060BBBBBBBBB060EEEFFFEEE060BBBBBBBBB060EEEF0FEEE060BB
                  BBBBBBB060EEEF0FEEE060FFFFFFFFF060FFFF0FFFF060F0000000F060F00000
                  00F060FFFFFFFFF060FFFF0FFFF060BBBBBBBBB060EEEF0FEEE060BBBBBBBBB0
                  60EEEF0FEEE060BBBBBBBBB060EEEFFFEEE0600000000000600000000000}
                Gutter.Bands = <
                  item
                    Width = 15
                  end
                  item
                    Width = 15
                    Color = clInfoBk
                  end>
                Gutter.Objects = <
                  item
                    ImageIndex = 0
                    Margin = 0
                    Band = 0
                    Tag = 0
                    Line = 0
                    OnCheckLine = SyntaxMemo2TGutterObjects0CheckLine
                    OnClick = SyntaxMemo2TGutterObjects0Click
                  end>
                Gutter.ExpBtnBand = -1
                Gutter.CollapsePen.Color = clGray
                Gutter.AutoSize = False
                HintProps.Font.Charset = DEFAULT_CHARSET
                HintProps.Font.Color = clWindowText
                HintProps.Font.Height = -11
                HintProps.Font.Name = 'Consolas'
                HintProps.Font.Style = []
                HintProps.Color = 13041663
                HintProps.ShowHints = [shScroll, shCollapsed, shGutter, shTokens]
                UserRanges = <>
                UndoLimit = 0
                TabMode = tmDialog
                StaplePen.Color = clGray
                WordWrap = True
                DefaultStyles.SelectioMark.Font.Charset = DEFAULT_CHARSET
                DefaultStyles.SelectioMark.Font.Color = clHighlightText
                DefaultStyles.SelectioMark.Font.Height = -13
                DefaultStyles.SelectioMark.Font.Name = 'Consolas'
                DefaultStyles.SelectioMark.Font.Style = []
                DefaultStyles.SelectioMark.BgColor = clHighlight
                DefaultStyles.SelectioMark.FormatType = ftColor
                DefaultStyles.SearchMark.Font.Charset = DEFAULT_CHARSET
                DefaultStyles.SearchMark.Font.Color = clWhite
                DefaultStyles.SearchMark.Font.Height = -13
                DefaultStyles.SearchMark.Font.Name = 'Consolas'
                DefaultStyles.SearchMark.Font.Style = []
                DefaultStyles.SearchMark.BgColor = clBlack
                DefaultStyles.SearchMark.FormatType = ftColor
                DefaultStyles.CurrentLine.Enabled = False
                DefaultStyles.CurrentLine.Font.Charset = DEFAULT_CHARSET
                DefaultStyles.CurrentLine.Font.Color = clHighlightText
                DefaultStyles.CurrentLine.Font.Height = -13
                DefaultStyles.CurrentLine.Font.Name = 'Consolas'
                DefaultStyles.CurrentLine.Font.Style = []
                DefaultStyles.CurrentLine.BgColor = clHighlight
                DefaultStyles.CurrentLine.FormatType = ftColor
                DefaultStyles.CollapseMark.Font.Charset = DEFAULT_CHARSET
                DefaultStyles.CollapseMark.Font.Color = clSilver
                DefaultStyles.CollapseMark.Font.Height = -13
                DefaultStyles.CollapseMark.Font.Name = 'Consolas'
                DefaultStyles.CollapseMark.Font.Style = []
                DefaultStyles.CollapseMark.FormatType = ftColor
                DefaultStyles.CollapseMark.BorderTypeLeft = blSolid
                DefaultStyles.CollapseMark.BorderColorLeft = clSilver
                DefaultStyles.CollapseMark.BorderTypeTop = blSolid
                DefaultStyles.CollapseMark.BorderColorTop = clSilver
                DefaultStyles.CollapseMark.BorderTypeRight = blSolid
                DefaultStyles.CollapseMark.BorderColorRight = clSilver
                DefaultStyles.CollapseMark.BorderTypeBottom = blSolid
                DefaultStyles.CollapseMark.BorderColorBottom = clSilver
                DefaultPopup = False
                SyncEditing.SyncRangeStyle.Font.Charset = DEFAULT_CHARSET
                SyncEditing.SyncRangeStyle.Font.Color = clWindowText
                SyncEditing.SyncRangeStyle.Font.Height = -13
                SyncEditing.SyncRangeStyle.Font.Name = 'Consolas'
                SyncEditing.SyncRangeStyle.Font.Style = []
                SyncEditing.SyncRangeStyle.BgColor = 14745568
                SyncEditing.SyncRangeStyle.FormatType = ftBackGround
                SyncEditing.ActiveWordsStyle.Font.Charset = DEFAULT_CHARSET
                SyncEditing.ActiveWordsStyle.Font.Color = clWindowText
                SyncEditing.ActiveWordsStyle.Font.Height = -13
                SyncEditing.ActiveWordsStyle.Font.Name = 'Consolas'
                SyncEditing.ActiveWordsStyle.Font.Style = []
                SyncEditing.ActiveWordsStyle.FormatType = ftBackGround
                SyncEditing.ActiveWordsStyle.BorderTypeLeft = blSolid
                SyncEditing.ActiveWordsStyle.BorderColorLeft = clBlue
                SyncEditing.ActiveWordsStyle.BorderTypeTop = blSolid
                SyncEditing.ActiveWordsStyle.BorderColorTop = clBlue
                SyncEditing.ActiveWordsStyle.BorderTypeRight = blSolid
                SyncEditing.ActiveWordsStyle.BorderColorRight = clBlue
                SyncEditing.ActiveWordsStyle.BorderTypeBottom = blSolid
                SyncEditing.ActiveWordsStyle.BorderColorBottom = clBlue
                SyncEditing.InactiveWordsStyle.Font.Charset = DEFAULT_CHARSET
                SyncEditing.InactiveWordsStyle.Font.Color = clWindowText
                SyncEditing.InactiveWordsStyle.Font.Height = -13
                SyncEditing.InactiveWordsStyle.Font.Name = 'Consolas'
                SyncEditing.InactiveWordsStyle.Font.Style = []
                SyncEditing.InactiveWordsStyle.FormatType = ftBackGround
                SyncEditing.InactiveWordsStyle.BorderTypeBottom = blSolid
                SyncEditing.InactiveWordsStyle.BorderColorBottom = clBtnFace
                Options = [soOverwriteBlocks, soEnableBlockSel, soHideSelection, soHideDynamic, soAutoIndentMode, soBackUnindent, soGroupUndo, soDragText, soDisableSelection, soDrawCurLineFocus]
                ReadOnly = True
                HorzRuler.Font.Charset = DEFAULT_CHARSET
                HorzRuler.Font.Color = clWindowText
                HorzRuler.Font.Height = -11
                HorzRuler.Font.Name = 'Consolas'
                HorzRuler.Font.Style = []
                TextMargins = <
                  item
                    Pen.Color = clSilver
                    RulerMark = False
                  end>
                Caret.Insert.Width = -2
                Caret.Overwrite.Width = 100
                Caret.ReadOnly.Width = -1
                Caret.Custom.Width = -2
                Transparent = False
                Alignment = taLeftJustify
                Align = alClient
                Ctl3D = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Consolas'
                Font.Style = []
                ParentColor = False
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 1
                TabStop = True
                OnKeyDown = SyntaxMemo2KeyDown
              end
            end
            object Panel6: TPanel
              Left = 187
              Top = 15
              Width = 219
              Height = 292
              Align = alClient
              BevelOuter = bvNone
              Caption = 'Panel6'
              TabOrder = 1
              object Label26: TLabel
                Left = 0
                Top = 0
                Width = 219
                Height = 15
                Align = alTop
                Alignment = taCenter
                AutoSize = False
                Caption = 'Keys list'
                Color = clActiveCaption
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clYellow
                Font.Height = -12
                Font.Name = 'Consolas'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object SyntaxMemo4: TSyntaxMemo
                Left = 0
                Top = 15
                Width = 219
                Height = 277
                NonPrintedSpaces = True
                NonPrintedEol = True
                NonPrintedEolDetails = False
                SelectModeDefault = msNone
                TabList.AsString = '4'
                NonPrinted.Visible = True
                NonPrinted.Font.Charset = DEFAULT_CHARSET
                NonPrinted.Font.Color = clSilver
                NonPrinted.Font.Height = -11
                NonPrinted.Font.Name = 'Consolas'
                NonPrinted.Font.Style = []
                NonPrinted.LineBreakChar = ' '
                LineNumbers.Alignment = taLeftJustify
                LineNumbers.Font.Charset = DEFAULT_CHARSET
                LineNumbers.Font.Color = clWindowText
                LineNumbers.Font.Height = -9
                LineNumbers.Font.Name = 'Consolas'
                LineNumbers.Font.Style = []
                LineNumbers.Band = -1
                Gutter.Width = 20
                Gutter.ExpandButtons.Data = {
                  FA000000424DFA000000000000007600000028000000180000000B0000000100
                  0400000000008400000000000000000000001000000000000000000000000000
                  8000008000000080800080000000800080008080000080808000C0C0C0000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00600000000000
                  60000000000060BBBBBBBBB060EEEFFFEEE060BBBBBBBBB060EEEF0FEEE060BB
                  BBBBBBB060EEEF0FEEE060FFFFFFFFF060FFFF0FFFF060F0000000F060F00000
                  00F060FFFFFFFFF060FFFF0FFFF060BBBBBBBBB060EEEF0FEEE060BBBBBBBBB0
                  60EEEF0FEEE060BBBBBBBBB060EEEFFFEEE0600000000000600000000000}
                Gutter.Bands = <>
                Gutter.Objects = <>
                Gutter.ExpBtnBand = -1
                Gutter.CollapsePen.Color = clGray
                Gutter.AutoSize = False
                HintProps.Font.Charset = DEFAULT_CHARSET
                HintProps.Font.Color = clWindowText
                HintProps.Font.Height = -11
                HintProps.Font.Name = 'Consolas'
                HintProps.Font.Style = []
                HintProps.Color = 13041663
                HintProps.ShowHints = [shScroll, shCollapsed, shGutter, shTokens]
                UserRanges = <>
                UndoLimit = 0
                TabMode = tmTabChar
                StaplePen.Color = clGray
                DefaultStyles.SelectioMark.Font.Charset = DEFAULT_CHARSET
                DefaultStyles.SelectioMark.Font.Color = clHighlightText
                DefaultStyles.SelectioMark.Font.Height = -13
                DefaultStyles.SelectioMark.Font.Name = 'Consolas'
                DefaultStyles.SelectioMark.Font.Style = []
                DefaultStyles.SelectioMark.BgColor = clHighlight
                DefaultStyles.SelectioMark.FormatType = ftColor
                DefaultStyles.SearchMark.Font.Charset = DEFAULT_CHARSET
                DefaultStyles.SearchMark.Font.Color = clWhite
                DefaultStyles.SearchMark.Font.Height = -13
                DefaultStyles.SearchMark.Font.Name = 'Consolas'
                DefaultStyles.SearchMark.Font.Style = []
                DefaultStyles.SearchMark.BgColor = clBlack
                DefaultStyles.SearchMark.FormatType = ftColor
                DefaultStyles.CurrentLine.Enabled = False
                DefaultStyles.CurrentLine.Font.Charset = DEFAULT_CHARSET
                DefaultStyles.CurrentLine.Font.Color = clWindowText
                DefaultStyles.CurrentLine.Font.Height = -13
                DefaultStyles.CurrentLine.Font.Name = 'Consolas'
                DefaultStyles.CurrentLine.Font.Style = []
                DefaultStyles.CurrentLine.FormatType = ftBackGround
                DefaultStyles.CollapseMark.Font.Charset = DEFAULT_CHARSET
                DefaultStyles.CollapseMark.Font.Color = clSilver
                DefaultStyles.CollapseMark.Font.Height = -13
                DefaultStyles.CollapseMark.Font.Name = 'Consolas'
                DefaultStyles.CollapseMark.Font.Style = []
                DefaultStyles.CollapseMark.FormatType = ftColor
                DefaultStyles.CollapseMark.BorderTypeLeft = blSolid
                DefaultStyles.CollapseMark.BorderColorLeft = clSilver
                DefaultStyles.CollapseMark.BorderTypeTop = blSolid
                DefaultStyles.CollapseMark.BorderColorTop = clSilver
                DefaultStyles.CollapseMark.BorderTypeRight = blSolid
                DefaultStyles.CollapseMark.BorderColorRight = clSilver
                DefaultStyles.CollapseMark.BorderTypeBottom = blSolid
                DefaultStyles.CollapseMark.BorderColorBottom = clSilver
                SyncEditing.SyncRangeStyle.Font.Charset = DEFAULT_CHARSET
                SyncEditing.SyncRangeStyle.Font.Color = clWindowText
                SyncEditing.SyncRangeStyle.Font.Height = -13
                SyncEditing.SyncRangeStyle.Font.Name = 'Consolas'
                SyncEditing.SyncRangeStyle.Font.Style = []
                SyncEditing.SyncRangeStyle.BgColor = 14745568
                SyncEditing.SyncRangeStyle.FormatType = ftBackGround
                SyncEditing.ActiveWordsStyle.Font.Charset = DEFAULT_CHARSET
                SyncEditing.ActiveWordsStyle.Font.Color = clWindowText
                SyncEditing.ActiveWordsStyle.Font.Height = -13
                SyncEditing.ActiveWordsStyle.Font.Name = 'Consolas'
                SyncEditing.ActiveWordsStyle.Font.Style = []
                SyncEditing.ActiveWordsStyle.FormatType = ftBackGround
                SyncEditing.ActiveWordsStyle.BorderTypeLeft = blSolid
                SyncEditing.ActiveWordsStyle.BorderColorLeft = clBlue
                SyncEditing.ActiveWordsStyle.BorderTypeTop = blSolid
                SyncEditing.ActiveWordsStyle.BorderColorTop = clBlue
                SyncEditing.ActiveWordsStyle.BorderTypeRight = blSolid
                SyncEditing.ActiveWordsStyle.BorderColorRight = clBlue
                SyncEditing.ActiveWordsStyle.BorderTypeBottom = blSolid
                SyncEditing.ActiveWordsStyle.BorderColorBottom = clBlue
                SyncEditing.InactiveWordsStyle.Font.Charset = DEFAULT_CHARSET
                SyncEditing.InactiveWordsStyle.Font.Color = clWindowText
                SyncEditing.InactiveWordsStyle.Font.Height = -13
                SyncEditing.InactiveWordsStyle.Font.Name = 'Consolas'
                SyncEditing.InactiveWordsStyle.Font.Style = []
                SyncEditing.InactiveWordsStyle.FormatType = ftBackGround
                SyncEditing.InactiveWordsStyle.BorderTypeBottom = blSolid
                SyncEditing.InactiveWordsStyle.BorderColorBottom = clBtnFace
                Options = [soOverwriteBlocks, soEnableBlockSel, soKeepCaretInText, soHideSelection, soHideDynamic, soAutoIndentMode, soBackUnindent, soGroupUndo, soDragText]
                HorzRuler.Font.Charset = DEFAULT_CHARSET
                HorzRuler.Font.Color = clWindowText
                HorzRuler.Font.Height = -11
                HorzRuler.Font.Name = 'Consolas'
                HorzRuler.Font.Style = []
                TextMargins = <
                  item
                    Pen.Color = clSilver
                    RulerMark = False
                  end>
                Caret.Insert.Width = -2
                Caret.Overwrite.Width = 100
                Caret.ReadOnly.Width = -1
                Caret.Custom.Width = -2
                Transparent = False
                Alignment = taLeftJustify
                Align = alClient
                Ctl3D = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Consolas'
                Font.Style = []
                ParentColor = False
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
                OnExit = Memo2Exit
              end
            end
          end
        end
      end
    end
    object TabSublex: TTabSheet
      Caption = 'Sub lexers'
      ImageIndex = 5
      object Splitter4: TSplitter
        Left = 174
        Top = 0
        Height = 337
      end
      inline SyntColFrame4: TfmLexerItems
        Left = 0
        Top = 0
        Width = 174
        Height = 337
        Align = alLeft
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = True
        inherited LB: TListBox
          Width = 174
          Height = 290
        end
        inherited Panel1: TPanel
          Width = 174
        end
        inherited Panel2: TPanel
          Top = 315
          Width = 174
        end
      end
      object Panel8: TPanel
        Left = 177
        Top = 0
        Width = 416
        Height = 337
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Label47: TLabel
          Left = 0
          Top = 205
          Width = 416
          Height = 17
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'Start condition'
          Color = clActiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Splitter5: TSplitter
          Left = 0
          Top = 269
          Width = 416
          Height = 3
          Cursor = crVSplit
          Align = alTop
        end
        object Label49: TLabel
          Left = 0
          Top = 272
          Width = 416
          Height = 17
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'End condition'
          Color = clActiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Panel9: TPanel
          Left = 0
          Top = 0
          Width = 416
          Height = 205
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            416
            205)
          object Label45: TLabel
            Left = 8
            Top = 32
            Width = 24
            Height = 13
            Caption = 'Style'
          end
          object Label46: TLabel
            Left = 8
            Top = 56
            Width = 59
            Height = 13
            Caption = 'Parent block'
          end
          object Label48: TLabel
            Left = 8
            Top = 8
            Width = 45
            Height = 13
            Caption = 'Sub lexer'
          end
          object ComboBox30: TComboBox
            Left = 120
            Top = 28
            Width = 280
            Height = 21
            Style = csDropDownList
            Anchors = [akLeft, akTop, akRight]
            ItemHeight = 13
            TabOrder = 1
            OnChange = ComboBox30Change
          end
          object ComboBox31: TComboBox
            Left = 120
            Top = 52
            Width = 280
            Height = 21
            Style = csDropDownList
            Anchors = [akLeft, akTop, akRight]
            ItemHeight = 13
            TabOrder = 2
            OnChange = ComboBox31Change
          end
          object CheckBox21: TCheckBox
            Left = 216
            Top = 92
            Width = 184
            Height = 17
            Alignment = taLeftJustify
            Anchors = [akTop, akRight]
            Caption = 'Strict parent block'
            TabOrder = 6
            OnClick = CheckBox21Click
          end
          object CheckBox22: TCheckBox
            Left = 216
            Top = 76
            Width = 184
            Height = 17
            Alignment = taLeftJustify
            Anchors = [akTop, akRight]
            Caption = 'Not a parent'
            TabOrder = 5
            OnClick = CheckBox22Click
          end
          object ComboBox32: TComboBox
            Left = 120
            Top = 4
            Width = 280
            Height = 21
            Style = csDropDownList
            Anchors = [akLeft, akTop, akRight]
            ItemHeight = 13
            TabOrder = 0
            OnChange = ComboBox32Change
          end
          object CheckBox23: TCheckBox
            Left = 8
            Top = 92
            Width = 193
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Start at the begin of text'
            TabOrder = 4
            OnClick = CheckBox23Click
          end
          object CheckBox24: TCheckBox
            Left = 8
            Top = 76
            Width = 193
            Height = 17
            Alignment = taLeftJustify
            Caption = 'End at the end of text'
            TabOrder = 3
            OnClick = CheckBox24Click
          end
          object CheckBox25: TCheckBox
            Left = 216
            Top = 108
            Width = 184
            Height = 17
            Alignment = taLeftJustify
            Anchors = [akTop, akRight]
            Caption = 'Always enabled'
            TabOrder = 7
            OnClick = CheckBox25Click
          end
          object CheckBox29: TCheckBox
            Left = 8
            Top = 108
            Width = 193
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Include bound text'
            TabOrder = 8
            OnClick = CheckBox29Click
          end
          inline RuleStatesFrame1: TRuleStatesFrame
            Left = 0
            Top = 124
            Width = 416
            Height = 81
            Align = alBottom
            TabOrder = 9
            TabStop = True
            inherited GroupBox1: TGroupBox
              Width = 416
              Height = 41
              inherited Label2: TLabel
                Left = 239
              end
              inherited Edit1: TEdit
                Left = 128
                Width = 57
              end
              inherited Edit2: TEdit
                Left = 351
                Width = 49
              end
            end
            inherited GroupBox2: TGroupBox
              Top = 41
              Width = 416
              inherited Label4: TLabel
                Left = 239
              end
              inherited Edit3: TEdit
                Left = 128
                Width = 57
              end
              inherited Edit4: TEdit
                Left = 351
                Width = 49
              end
            end
          end
        end
        object SyntaxMemo6: TSyntaxMemo
          Left = 0
          Top = 289
          Width = 416
          Height = 48
          NonPrintedSpaces = True
          NonPrintedEol = True
          NonPrintedEolDetails = False
          SelectModeDefault = msNone
          Lines.Strings = (
            'SyntaxMemo6')
          TabList.AsString = '4'
          NonPrinted.Font.Charset = DEFAULT_CHARSET
          NonPrinted.Font.Color = clSilver
          NonPrinted.Font.Height = -11
          NonPrinted.Font.Name = 'Consolas'
          NonPrinted.Font.Style = []
          LineNumbers.Alignment = taLeftJustify
          LineNumbers.Font.Charset = DEFAULT_CHARSET
          LineNumbers.Font.Color = clWindowText
          LineNumbers.Font.Height = -9
          LineNumbers.Font.Name = 'Consolas'
          LineNumbers.Font.Style = []
          LineNumbers.Band = -1
          Gutter.Width = 15
          Gutter.ExpandButtons.Data = {
            FA000000424DFA000000000000007600000028000000180000000B0000000100
            0400000000008400000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00600000000000
            60000000000060BBBBBBBBB060EEEFFFEEE060BBBBBBBBB060EEEF0FEEE060BB
            BBBBBBB060EEEF0FEEE060FFFFFFFFF060FFFF0FFFF060F0000000F060F00000
            00F060FFFFFFFFF060FFFF0FFFF060BBBBBBBBB060EEEF0FEEE060BBBBBBBBB0
            60EEEF0FEEE060BBBBBBBBB060EEEFFFEEE0600000000000600000000000}
          Gutter.Bands = <>
          Gutter.Objects = <>
          Gutter.ExpBtnBand = -1
          Gutter.CollapsePen.Color = clGray
          Gutter.AutoSize = False
          HintProps.Font.Charset = DEFAULT_CHARSET
          HintProps.Font.Color = clWindowText
          HintProps.Font.Height = -11
          HintProps.Font.Name = 'Consolas'
          HintProps.Font.Style = []
          HintProps.Color = 13041663
          HintProps.ShowHints = [shScroll, shCollapsed, shGutter, shTokens]
          UserRanges = <>
          UndoLimit = 0
          ScrollBars = ssVertical
          StaplePen.Color = clGray
          DefaultStyles.SelectioMark.Font.Charset = DEFAULT_CHARSET
          DefaultStyles.SelectioMark.Font.Color = clHighlightText
          DefaultStyles.SelectioMark.Font.Height = -13
          DefaultStyles.SelectioMark.Font.Name = 'Consolas'
          DefaultStyles.SelectioMark.Font.Style = []
          DefaultStyles.SelectioMark.BgColor = clHighlight
          DefaultStyles.SelectioMark.FormatType = ftColor
          DefaultStyles.SearchMark.Font.Charset = DEFAULT_CHARSET
          DefaultStyles.SearchMark.Font.Color = clWhite
          DefaultStyles.SearchMark.Font.Height = -13
          DefaultStyles.SearchMark.Font.Name = 'Consolas'
          DefaultStyles.SearchMark.Font.Style = []
          DefaultStyles.SearchMark.BgColor = clBlack
          DefaultStyles.SearchMark.FormatType = ftColor
          DefaultStyles.CurrentLine.Enabled = False
          DefaultStyles.CurrentLine.Font.Charset = DEFAULT_CHARSET
          DefaultStyles.CurrentLine.Font.Color = clWindowText
          DefaultStyles.CurrentLine.Font.Height = -13
          DefaultStyles.CurrentLine.Font.Name = 'Consolas'
          DefaultStyles.CurrentLine.Font.Style = []
          DefaultStyles.CurrentLine.FormatType = ftBackGround
          DefaultStyles.CollapseMark.Font.Charset = DEFAULT_CHARSET
          DefaultStyles.CollapseMark.Font.Color = clSilver
          DefaultStyles.CollapseMark.Font.Height = -13
          DefaultStyles.CollapseMark.Font.Name = 'Consolas'
          DefaultStyles.CollapseMark.Font.Style = []
          DefaultStyles.CollapseMark.FormatType = ftColor
          DefaultStyles.CollapseMark.BorderTypeLeft = blSolid
          DefaultStyles.CollapseMark.BorderColorLeft = clSilver
          DefaultStyles.CollapseMark.BorderTypeTop = blSolid
          DefaultStyles.CollapseMark.BorderColorTop = clSilver
          DefaultStyles.CollapseMark.BorderTypeRight = blSolid
          DefaultStyles.CollapseMark.BorderColorRight = clSilver
          DefaultStyles.CollapseMark.BorderTypeBottom = blSolid
          DefaultStyles.CollapseMark.BorderColorBottom = clSilver
          SyncEditing.SyncRangeStyle.Font.Charset = DEFAULT_CHARSET
          SyncEditing.SyncRangeStyle.Font.Color = clWindowText
          SyncEditing.SyncRangeStyle.Font.Height = -13
          SyncEditing.SyncRangeStyle.Font.Name = 'Consolas'
          SyncEditing.SyncRangeStyle.Font.Style = []
          SyncEditing.SyncRangeStyle.BgColor = 14745568
          SyncEditing.SyncRangeStyle.FormatType = ftBackGround
          SyncEditing.ActiveWordsStyle.Font.Charset = DEFAULT_CHARSET
          SyncEditing.ActiveWordsStyle.Font.Color = clWindowText
          SyncEditing.ActiveWordsStyle.Font.Height = -13
          SyncEditing.ActiveWordsStyle.Font.Name = 'Consolas'
          SyncEditing.ActiveWordsStyle.Font.Style = []
          SyncEditing.ActiveWordsStyle.FormatType = ftBackGround
          SyncEditing.ActiveWordsStyle.BorderTypeLeft = blSolid
          SyncEditing.ActiveWordsStyle.BorderColorLeft = clBlue
          SyncEditing.ActiveWordsStyle.BorderTypeTop = blSolid
          SyncEditing.ActiveWordsStyle.BorderColorTop = clBlue
          SyncEditing.ActiveWordsStyle.BorderTypeRight = blSolid
          SyncEditing.ActiveWordsStyle.BorderColorRight = clBlue
          SyncEditing.ActiveWordsStyle.BorderTypeBottom = blSolid
          SyncEditing.ActiveWordsStyle.BorderColorBottom = clBlue
          SyncEditing.InactiveWordsStyle.Font.Charset = DEFAULT_CHARSET
          SyncEditing.InactiveWordsStyle.Font.Color = clWindowText
          SyncEditing.InactiveWordsStyle.Font.Height = -13
          SyncEditing.InactiveWordsStyle.Font.Name = 'Consolas'
          SyncEditing.InactiveWordsStyle.Font.Style = []
          SyncEditing.InactiveWordsStyle.FormatType = ftBackGround
          SyncEditing.InactiveWordsStyle.BorderTypeBottom = blSolid
          SyncEditing.InactiveWordsStyle.BorderColorBottom = clBtnFace
          Options = [soOverwriteBlocks, soEnableBlockSel, soHideSelection, soHideDynamic, soAutoIndentMode, soBackUnindent, soGroupUndo, soDragText, soScrollLastLine, soSmartCaret, soVariableHorzScrollBar]
          BorderStyle = bsNone
          HorzRuler.Font.Charset = DEFAULT_CHARSET
          HorzRuler.Font.Color = clWindowText
          HorzRuler.Font.Height = -11
          HorzRuler.Font.Name = 'Consolas'
          HorzRuler.Font.Style = []
          TextMargins = <
            item
              Pen.Color = clSilver
              RulerMark = False
            end>
          Caret.Insert.Width = -2
          Caret.Overwrite.Width = 100
          Caret.ReadOnly.Width = -1
          Caret.Custom.Width = -2
          Transparent = False
          Alignment = taLeftJustify
          Align = alClient
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          OnExit = SyntaxMemo6Exit
        end
        object SyntaxMemo5: TSyntaxMemo
          Left = 0
          Top = 222
          Width = 416
          Height = 47
          NonPrintedSpaces = True
          NonPrintedEol = True
          NonPrintedEolDetails = False
          SelectModeDefault = msNone
          Lines.Strings = (
            'SyntaxMemo5')
          TabList.AsString = '4'
          NonPrinted.Font.Charset = DEFAULT_CHARSET
          NonPrinted.Font.Color = clSilver
          NonPrinted.Font.Height = -11
          NonPrinted.Font.Name = 'Consolas'
          NonPrinted.Font.Style = []
          LineNumbers.Alignment = taLeftJustify
          LineNumbers.Font.Charset = DEFAULT_CHARSET
          LineNumbers.Font.Color = clWindowText
          LineNumbers.Font.Height = -9
          LineNumbers.Font.Name = 'Consolas'
          LineNumbers.Font.Style = []
          LineNumbers.Band = -1
          Gutter.Width = 15
          Gutter.ExpandButtons.Data = {
            FA000000424DFA000000000000007600000028000000180000000B0000000100
            0400000000008400000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00600000000000
            60000000000060BBBBBBBBB060EEEFFFEEE060BBBBBBBBB060EEEF0FEEE060BB
            BBBBBBB060EEEF0FEEE060FFFFFFFFF060FFFF0FFFF060F0000000F060F00000
            00F060FFFFFFFFF060FFFF0FFFF060BBBBBBBBB060EEEF0FEEE060BBBBBBBBB0
            60EEEF0FEEE060BBBBBBBBB060EEEFFFEEE0600000000000600000000000}
          Gutter.Bands = <>
          Gutter.Objects = <>
          Gutter.ExpBtnBand = -1
          Gutter.CollapsePen.Color = clGray
          Gutter.AutoSize = False
          HintProps.Font.Charset = DEFAULT_CHARSET
          HintProps.Font.Color = clWindowText
          HintProps.Font.Height = -11
          HintProps.Font.Name = 'Consolas'
          HintProps.Font.Style = []
          HintProps.Color = 13041663
          HintProps.ShowHints = [shScroll, shCollapsed, shGutter, shTokens]
          UserRanges = <>
          UndoLimit = 0
          ScrollBars = ssVertical
          StaplePen.Color = clGray
          DefaultStyles.SelectioMark.Font.Charset = DEFAULT_CHARSET
          DefaultStyles.SelectioMark.Font.Color = clHighlightText
          DefaultStyles.SelectioMark.Font.Height = -13
          DefaultStyles.SelectioMark.Font.Name = 'Consolas'
          DefaultStyles.SelectioMark.Font.Style = []
          DefaultStyles.SelectioMark.BgColor = clHighlight
          DefaultStyles.SelectioMark.FormatType = ftColor
          DefaultStyles.SearchMark.Font.Charset = DEFAULT_CHARSET
          DefaultStyles.SearchMark.Font.Color = clWhite
          DefaultStyles.SearchMark.Font.Height = -13
          DefaultStyles.SearchMark.Font.Name = 'Consolas'
          DefaultStyles.SearchMark.Font.Style = []
          DefaultStyles.SearchMark.BgColor = clBlack
          DefaultStyles.SearchMark.FormatType = ftColor
          DefaultStyles.CurrentLine.Enabled = False
          DefaultStyles.CurrentLine.Font.Charset = DEFAULT_CHARSET
          DefaultStyles.CurrentLine.Font.Color = clWindowText
          DefaultStyles.CurrentLine.Font.Height = -13
          DefaultStyles.CurrentLine.Font.Name = 'Consolas'
          DefaultStyles.CurrentLine.Font.Style = []
          DefaultStyles.CurrentLine.FormatType = ftBackGround
          DefaultStyles.CollapseMark.Font.Charset = DEFAULT_CHARSET
          DefaultStyles.CollapseMark.Font.Color = clSilver
          DefaultStyles.CollapseMark.Font.Height = -13
          DefaultStyles.CollapseMark.Font.Name = 'Consolas'
          DefaultStyles.CollapseMark.Font.Style = []
          DefaultStyles.CollapseMark.FormatType = ftColor
          DefaultStyles.CollapseMark.BorderTypeLeft = blSolid
          DefaultStyles.CollapseMark.BorderColorLeft = clSilver
          DefaultStyles.CollapseMark.BorderTypeTop = blSolid
          DefaultStyles.CollapseMark.BorderColorTop = clSilver
          DefaultStyles.CollapseMark.BorderTypeRight = blSolid
          DefaultStyles.CollapseMark.BorderColorRight = clSilver
          DefaultStyles.CollapseMark.BorderTypeBottom = blSolid
          DefaultStyles.CollapseMark.BorderColorBottom = clSilver
          SyncEditing.SyncRangeStyle.Font.Charset = DEFAULT_CHARSET
          SyncEditing.SyncRangeStyle.Font.Color = clWindowText
          SyncEditing.SyncRangeStyle.Font.Height = -13
          SyncEditing.SyncRangeStyle.Font.Name = 'Consolas'
          SyncEditing.SyncRangeStyle.Font.Style = []
          SyncEditing.SyncRangeStyle.BgColor = 14745568
          SyncEditing.SyncRangeStyle.FormatType = ftBackGround
          SyncEditing.ActiveWordsStyle.Font.Charset = DEFAULT_CHARSET
          SyncEditing.ActiveWordsStyle.Font.Color = clWindowText
          SyncEditing.ActiveWordsStyle.Font.Height = -13
          SyncEditing.ActiveWordsStyle.Font.Name = 'Consolas'
          SyncEditing.ActiveWordsStyle.Font.Style = []
          SyncEditing.ActiveWordsStyle.FormatType = ftBackGround
          SyncEditing.ActiveWordsStyle.BorderTypeLeft = blSolid
          SyncEditing.ActiveWordsStyle.BorderColorLeft = clBlue
          SyncEditing.ActiveWordsStyle.BorderTypeTop = blSolid
          SyncEditing.ActiveWordsStyle.BorderColorTop = clBlue
          SyncEditing.ActiveWordsStyle.BorderTypeRight = blSolid
          SyncEditing.ActiveWordsStyle.BorderColorRight = clBlue
          SyncEditing.ActiveWordsStyle.BorderTypeBottom = blSolid
          SyncEditing.ActiveWordsStyle.BorderColorBottom = clBlue
          SyncEditing.InactiveWordsStyle.Font.Charset = DEFAULT_CHARSET
          SyncEditing.InactiveWordsStyle.Font.Color = clWindowText
          SyncEditing.InactiveWordsStyle.Font.Height = -13
          SyncEditing.InactiveWordsStyle.Font.Name = 'Consolas'
          SyncEditing.InactiveWordsStyle.Font.Style = []
          SyncEditing.InactiveWordsStyle.FormatType = ftBackGround
          SyncEditing.InactiveWordsStyle.BorderTypeBottom = blSolid
          SyncEditing.InactiveWordsStyle.BorderColorBottom = clBtnFace
          Options = [soOverwriteBlocks, soEnableBlockSel, soHideSelection, soHideDynamic, soAutoIndentMode, soBackUnindent, soGroupUndo, soDragText, soScrollLastLine, soSmartCaret, soVariableHorzScrollBar]
          BorderStyle = bsNone
          HorzRuler.Font.Charset = DEFAULT_CHARSET
          HorzRuler.Font.Color = clWindowText
          HorzRuler.Font.Height = -11
          HorzRuler.Font.Name = 'Consolas'
          HorzRuler.Font.Style = []
          TextMargins = <
            item
              Pen.Color = clSilver
              RulerMark = False
            end>
          Caret.Insert.Width = -2
          Caret.Overwrite.Width = 100
          Caret.ReadOnly.Width = -1
          Caret.Custom.Width = -2
          Transparent = False
          Alignment = taLeftJustify
          Align = alTop
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          OnExit = SyntaxMemo5Exit
        end
      end
    end
    object TabGrammar: TTabSheet
      Caption = 'Grammar'
      ImageIndex = 7
      OnExit = TabGrammarExit
      object Splitter6: TSplitter
        Left = 145
        Top = 0
        Width = 4
        Height = 337
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 145
        Height = 337
        Align = alLeft
        BevelOuter = bvNone
        Caption = 'Panel1'
        TabOrder = 0
        object TreeView1: TTreeView
          Left = 0
          Top = 25
          Width = 145
          Height = 312
          Align = alClient
          Indent = 19
          TabOrder = 0
          OnCustomDrawItem = TreeView1CustomDrawItem
        end
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 145
          Height = 25
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            145
            25)
          object SpeedButton3: TButton
            Left = 0
            Top = 0
            Width = 143
            Height = 22
            Anchors = [akLeft, akTop, akRight]
            Caption = 'Compile gramma'
            TabOrder = 0
            OnClick = SpeedButton3Click
          end
        end
      end
      object SyntaxMemo9: TSyntaxMemo
        Left = 149
        Top = 0
        Width = 444
        Height = 337
        NonPrintedSpaces = True
        NonPrintedEol = True
        NonPrintedEolDetails = False
        SelectModeDefault = msNone
        Lines.Strings = (
          'SyntaxMemo9')
        SyntaxAnalyzer = SyntAnalyzer2
        TabList.AsString = '4'
        NonPrinted.Font.Charset = DEFAULT_CHARSET
        NonPrinted.Font.Color = clSilver
        NonPrinted.Font.Height = -11
        NonPrinted.Font.Name = 'Consolas'
        NonPrinted.Font.Style = []
        LineNumbers.Visible = False
        LineNumbers.Alignment = taLeftJustify
        LineNumbers.Font.Charset = DEFAULT_CHARSET
        LineNumbers.Font.Color = clWindowText
        LineNumbers.Font.Height = -9
        LineNumbers.Font.Name = 'Consolas'
        LineNumbers.Font.Style = []
        LineNumbers.Band = -1
        Gutter.Visible = False
        Gutter.Width = 20
        Gutter.ExpandButtons.Data = {
          FA000000424DFA000000000000007600000028000000180000000B0000000100
          0400000000008400000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00600000000000
          60000000000060BBBBBBBBB060EEEFFFEEE060BBBBBBBBB060EEEF0FEEE060BB
          BBBBBBB060EEEF0FEEE060FFFFFFFFF060FFFF0FFFF060F0000000F060F00000
          00F060FFFFFFFFF060FFFF0FFFF060BBBBBBBBB060EEEF0FEEE060BBBBBBBBB0
          60EEEF0FEEE060BBBBBBBBB060EEEFFFEEE0600000000000600000000000}
        Gutter.Bands = <>
        Gutter.Objects = <>
        Gutter.ExpBtnBand = -1
        Gutter.CollapsePen.Color = clGray
        Gutter.AutoSize = False
        HintProps.Font.Charset = DEFAULT_CHARSET
        HintProps.Font.Color = clWindowText
        HintProps.Font.Height = -11
        HintProps.Font.Name = 'Consolas'
        HintProps.Font.Style = []
        HintProps.Color = 13041663
        HintProps.ShowHints = [shScroll, shCollapsed, shGutter, shTokens]
        UserRanges = <>
        UndoLimit = 0
        StaplePen.Color = clGray
        DefaultStyles.SelectioMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.SelectioMark.Font.Color = clHighlightText
        DefaultStyles.SelectioMark.Font.Height = -13
        DefaultStyles.SelectioMark.Font.Name = 'Consolas'
        DefaultStyles.SelectioMark.Font.Style = []
        DefaultStyles.SelectioMark.BgColor = clHighlight
        DefaultStyles.SelectioMark.FormatType = ftColor
        DefaultStyles.SearchMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.SearchMark.Font.Color = clWhite
        DefaultStyles.SearchMark.Font.Height = -13
        DefaultStyles.SearchMark.Font.Name = 'Consolas'
        DefaultStyles.SearchMark.Font.Style = []
        DefaultStyles.SearchMark.BgColor = clBlack
        DefaultStyles.SearchMark.FormatType = ftColor
        DefaultStyles.CurrentLine.Enabled = False
        DefaultStyles.CurrentLine.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.CurrentLine.Font.Color = clWindowText
        DefaultStyles.CurrentLine.Font.Height = -13
        DefaultStyles.CurrentLine.Font.Name = 'Consolas'
        DefaultStyles.CurrentLine.Font.Style = []
        DefaultStyles.CurrentLine.FormatType = ftBackGround
        DefaultStyles.CollapseMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.CollapseMark.Font.Color = clSilver
        DefaultStyles.CollapseMark.Font.Height = -13
        DefaultStyles.CollapseMark.Font.Name = 'Consolas'
        DefaultStyles.CollapseMark.Font.Style = []
        DefaultStyles.CollapseMark.FormatType = ftColor
        DefaultStyles.CollapseMark.BorderTypeLeft = blSolid
        DefaultStyles.CollapseMark.BorderColorLeft = clSilver
        DefaultStyles.CollapseMark.BorderTypeTop = blSolid
        DefaultStyles.CollapseMark.BorderColorTop = clSilver
        DefaultStyles.CollapseMark.BorderTypeRight = blSolid
        DefaultStyles.CollapseMark.BorderColorRight = clSilver
        DefaultStyles.CollapseMark.BorderTypeBottom = blSolid
        DefaultStyles.CollapseMark.BorderColorBottom = clSilver
        SyncEditing.SyncRangeStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.SyncRangeStyle.Font.Color = clWindowText
        SyncEditing.SyncRangeStyle.Font.Height = -13
        SyncEditing.SyncRangeStyle.Font.Name = 'Consolas'
        SyncEditing.SyncRangeStyle.Font.Style = []
        SyncEditing.SyncRangeStyle.BgColor = 14745568
        SyncEditing.SyncRangeStyle.FormatType = ftBackGround
        SyncEditing.ActiveWordsStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.ActiveWordsStyle.Font.Color = clWindowText
        SyncEditing.ActiveWordsStyle.Font.Height = -13
        SyncEditing.ActiveWordsStyle.Font.Name = 'Consolas'
        SyncEditing.ActiveWordsStyle.Font.Style = []
        SyncEditing.ActiveWordsStyle.FormatType = ftBackGround
        SyncEditing.ActiveWordsStyle.BorderTypeLeft = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorLeft = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeTop = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorTop = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeRight = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorRight = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeBottom = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorBottom = clBlue
        SyncEditing.InactiveWordsStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.InactiveWordsStyle.Font.Color = clWindowText
        SyncEditing.InactiveWordsStyle.Font.Height = -13
        SyncEditing.InactiveWordsStyle.Font.Name = 'Consolas'
        SyncEditing.InactiveWordsStyle.Font.Style = []
        SyncEditing.InactiveWordsStyle.FormatType = ftBackGround
        SyncEditing.InactiveWordsStyle.BorderTypeBottom = blSolid
        SyncEditing.InactiveWordsStyle.BorderColorBottom = clBtnFace
        Options = [soOverwriteBlocks, soEnableBlockSel, soHideSelection, soHideDynamic, soAutoIndentMode, soBackUnindent, soGroupUndo, soDragText, soScrollLastLine, soVariableHorzScrollBar]
        HorzRuler.Font.Charset = DEFAULT_CHARSET
        HorzRuler.Font.Color = clWindowText
        HorzRuler.Font.Height = -11
        HorzRuler.Font.Name = 'Consolas'
        HorzRuler.Font.Style = []
        TextMargins = <
          item
            Pen.Color = clSilver
            RulerMark = False
          end>
        Caret.Insert.Width = -2
        Caret.Overwrite.Width = 100
        Caret.ReadOnly.Width = -1
        Caret.Custom.Width = -2
        Transparent = False
        Alignment = taLeftJustify
        Align = alClient
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Consolas'
        Font.Style = []
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
    end
    object TabNotes: TTabSheet
      Caption = 'Notes'
      ImageIndex = 6
      object SyntaxMemo8: TSyntaxMemo
        Left = 0
        Top = 0
        Width = 593
        Height = 337
        NonPrintedSpaces = True
        NonPrintedEol = True
        NonPrintedEolDetails = False
        SelectModeDefault = msNone
        TabList.AsString = '4'
        NonPrinted.Font.Charset = DEFAULT_CHARSET
        NonPrinted.Font.Color = clSilver
        NonPrinted.Font.Height = -11
        NonPrinted.Font.Name = 'Consolas'
        NonPrinted.Font.Style = []
        LineNumbers.Visible = False
        LineNumbers.Alignment = taLeftJustify
        LineNumbers.Font.Charset = DEFAULT_CHARSET
        LineNumbers.Font.Color = clWindowText
        LineNumbers.Font.Height = -9
        LineNumbers.Font.Name = 'Consolas'
        LineNumbers.Font.Style = []
        LineNumbers.Band = -1
        Gutter.Visible = False
        Gutter.ExpandButtons.Data = {
          FA000000424DFA000000000000007600000028000000180000000B0000000100
          0400000000008400000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00600000000000
          60000000000060BBBBBBBBB060EEEFFFEEE060BBBBBBBBB060EEEF0FEEE060BB
          BBBBBBB060EEEF0FEEE060FFFFFFFFF060FFFF0FFFF060F0000000F060F00000
          00F060FFFFFFFFF060FFFF0FFFF060BBBBBBBBB060EEEF0FEEE060BBBBBBBBB0
          60EEEF0FEEE060BBBBBBBBB060EEEFFFEEE0600000000000600000000000}
        Gutter.Bands = <>
        Gutter.Objects = <>
        Gutter.ExpBtnBand = -1
        Gutter.CollapsePen.Color = clGray
        Gutter.AutoSize = False
        HintProps.Font.Charset = DEFAULT_CHARSET
        HintProps.Font.Color = clWindowText
        HintProps.Font.Height = -11
        HintProps.Font.Name = 'Consolas'
        HintProps.Font.Style = []
        HintProps.Color = 13041663
        HintProps.ShowHints = [shScroll, shCollapsed, shGutter, shTokens]
        UserRanges = <>
        UndoLimit = 0
        StaplePen.Color = clGray
        DefaultStyles.SelectioMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.SelectioMark.Font.Color = clHighlightText
        DefaultStyles.SelectioMark.Font.Height = -13
        DefaultStyles.SelectioMark.Font.Name = 'Consolas'
        DefaultStyles.SelectioMark.Font.Style = []
        DefaultStyles.SelectioMark.BgColor = clHighlight
        DefaultStyles.SelectioMark.FormatType = ftColor
        DefaultStyles.SearchMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.SearchMark.Font.Color = clWhite
        DefaultStyles.SearchMark.Font.Height = -13
        DefaultStyles.SearchMark.Font.Name = 'Consolas'
        DefaultStyles.SearchMark.Font.Style = []
        DefaultStyles.SearchMark.BgColor = clBlack
        DefaultStyles.SearchMark.FormatType = ftColor
        DefaultStyles.CurrentLine.Enabled = False
        DefaultStyles.CurrentLine.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.CurrentLine.Font.Color = clWindowText
        DefaultStyles.CurrentLine.Font.Height = -13
        DefaultStyles.CurrentLine.Font.Name = 'Consolas'
        DefaultStyles.CurrentLine.Font.Style = []
        DefaultStyles.CurrentLine.FormatType = ftBackGround
        DefaultStyles.CollapseMark.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.CollapseMark.Font.Color = clSilver
        DefaultStyles.CollapseMark.Font.Height = -13
        DefaultStyles.CollapseMark.Font.Name = 'Consolas'
        DefaultStyles.CollapseMark.Font.Style = []
        DefaultStyles.CollapseMark.FormatType = ftColor
        DefaultStyles.CollapseMark.BorderTypeLeft = blSolid
        DefaultStyles.CollapseMark.BorderColorLeft = clSilver
        DefaultStyles.CollapseMark.BorderTypeTop = blSolid
        DefaultStyles.CollapseMark.BorderColorTop = clSilver
        DefaultStyles.CollapseMark.BorderTypeRight = blSolid
        DefaultStyles.CollapseMark.BorderColorRight = clSilver
        DefaultStyles.CollapseMark.BorderTypeBottom = blSolid
        DefaultStyles.CollapseMark.BorderColorBottom = clSilver
        SyncEditing.SyncRangeStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.SyncRangeStyle.Font.Color = clWindowText
        SyncEditing.SyncRangeStyle.Font.Height = -13
        SyncEditing.SyncRangeStyle.Font.Name = 'Consolas'
        SyncEditing.SyncRangeStyle.Font.Style = []
        SyncEditing.SyncRangeStyle.BgColor = 14745568
        SyncEditing.SyncRangeStyle.FormatType = ftBackGround
        SyncEditing.ActiveWordsStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.ActiveWordsStyle.Font.Color = clWindowText
        SyncEditing.ActiveWordsStyle.Font.Height = -13
        SyncEditing.ActiveWordsStyle.Font.Name = 'Consolas'
        SyncEditing.ActiveWordsStyle.Font.Style = []
        SyncEditing.ActiveWordsStyle.FormatType = ftBackGround
        SyncEditing.ActiveWordsStyle.BorderTypeLeft = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorLeft = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeTop = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorTop = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeRight = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorRight = clBlue
        SyncEditing.ActiveWordsStyle.BorderTypeBottom = blSolid
        SyncEditing.ActiveWordsStyle.BorderColorBottom = clBlue
        SyncEditing.InactiveWordsStyle.Font.Charset = DEFAULT_CHARSET
        SyncEditing.InactiveWordsStyle.Font.Color = clWindowText
        SyncEditing.InactiveWordsStyle.Font.Height = -13
        SyncEditing.InactiveWordsStyle.Font.Name = 'Consolas'
        SyncEditing.InactiveWordsStyle.Font.Style = []
        SyncEditing.InactiveWordsStyle.FormatType = ftBackGround
        SyncEditing.InactiveWordsStyle.BorderTypeBottom = blSolid
        SyncEditing.InactiveWordsStyle.BorderColorBottom = clBtnFace
        HorzRuler.Font.Charset = DEFAULT_CHARSET
        HorzRuler.Font.Color = clWindowText
        HorzRuler.Font.Height = -11
        HorzRuler.Font.Name = 'Consolas'
        HorzRuler.Font.Style = []
        TextMargins = <
          item
            Pen.Color = clSilver
            RulerMark = False
          end>
        Caret.Insert.Width = -2
        Caret.Overwrite.Width = 100
        Caret.ReadOnly.Width = -1
        Caret.Custom.Width = -2
        Transparent = False
        Alignment = taLeftJustify
        Align = alClient
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object Panel_Buttons: TPanel
    Left = 0
    Top = 610
    Width = 601
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      601
      31)
    object Button8: TButton
      Left = 332
      Top = 4
      Width = 85
      Height = 23
      Anchors = [akTop, akRight]
      Caption = '&Apply'
      TabOrder = 0
      OnClick = Button8Click
    end
    object Button2: TButton
      Left = 512
      Top = 4
      Width = 85
      Height = 23
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 2
    end
    object Button1: TButton
      Left = 422
      Top = 4
      Width = 85
      Height = 23
      Anchors = [akTop, akRight]
      Caption = '&OK'
      ModalResult = 1
      TabOrder = 1
    end
  end
  object Panel_Preview: TPanel
    Left = 0
    Top = 368
    Width = 601
    Height = 242
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object Splitter7: TSplitter
      Left = 145
      Top = 0
      Height = 242
    end
    object SyntaxMemo1: TSyntaxMemo
      Left = 148
      Top = 0
      Width = 453
      Height = 242
      NonPrintedSpaces = True
      NonPrintedEol = True
      NonPrintedEolDetails = False
      SelectModeDefault = msNone
      SyntaxAnalyzer = FSynt
      TabList.AsString = '4'
      NonPrinted.Font.Charset = DEFAULT_CHARSET
      NonPrinted.Font.Color = clSilver
      NonPrinted.Font.Height = -11
      NonPrinted.Font.Name = 'Consolas'
      NonPrinted.Font.Style = []
      LineNumbers.Visible = False
      LineNumbers.Alignment = taLeftJustify
      LineNumbers.Font.Charset = DEFAULT_CHARSET
      LineNumbers.Font.Color = clWindowText
      LineNumbers.Font.Height = -9
      LineNumbers.Font.Name = 'Consolas'
      LineNumbers.Font.Style = []
      LineNumbers.Band = 0
      LineNumbers.AutoSize = True
      Gutter.Width = 14
      Gutter.ExpandButtons.Data = {
        9E020000424D9E020000000000003600000028000000120000000B0000000100
        1800000000006802000000000000000000000000000000000000000080000080
        0000800000800000800000800000800000800000800000800000800000800000
        800000800000800000800000800000800000D3C2B0B59878B59878B59878B598
        78B59878B59878B59878D3C2B0D3C2B0B59878B59878B59878B59878B59878B5
        9878B59878D3C2B00000B59878BFCCD2AEBEC6A8B8C2A7B8C1A7B8C1A6B7C0AA
        BAC3B59878B59878BFCCD2AEBEC6A8B8C2A7B8C1A7B8C1A6B7C0AABAC3B59878
        0000B59878D9E1E4CFD8DCC9D3D8C7D2D7C6D1D6C0CCD2BBC8CFB59878B59878
        D9E1E4CFD8DCC9D3D8000000C6D1D6C0CCD2BBC8CFB598780000B59878EEF2F2
        ECF0F0E7EDEDE6EBECE3E9EAD9E0E3CCD6DBB59878B59878EEF2F2ECF0F0E7ED
        ED000000E3E9EAD9E0E3CCD6DBB598780000B59878F1F5F50000000000000000
        00000000000000D2DBDFB59878B59878F1F5F500000000000000000000000000
        0000D2DBDFB598780000B59878F5F7F7F5F7F7F4F7F7F4F7F7F4F6F6EBF0F1DA
        E1E5B59878B59878F5F7F7F5F7F7F4F7F7000000F4F6F6EBF0F1DAE1E5B59878
        0000B59878FBFCFCFBFDFDFBFDFDFBFDFDFBFCFCFAFCFCF3F6F7B59878B59878
        FBFCFCFBFDFDFBFDFD000000FBFCFCFAFCFCF3F6F7B598780000B59878FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB59878B59878FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFB598780000D3C2B0B59878B59878B59878B598
        78B59878B59878B59878D3C2B0D3C2B0B59878B59878B59878B59878B59878B5
        9878B59878D3C2B0000000008000008000008000008000008000008000008000
        0080000080000080000080000080000080000080000080000080000080000080
        0000}
      Gutter.Bands = <
        item
          Width = 0
          Color = clBtnFace
          Gradient = True
        end
        item
          Width = 0
          Color = clWhite
        end
        item
          Width = 14
          Color = 16119285
          LeftBound = clBtnShadow
        end>
      Gutter.Objects = <>
      Gutter.ExpBtnBand = 2
      Gutter.CollapsePen.Color = clGray
      Gutter.AutoSize = True
      HintProps.Font.Charset = DEFAULT_CHARSET
      HintProps.Font.Color = clWindowText
      HintProps.Font.Height = -11
      HintProps.Font.Name = 'Consolas'
      HintProps.Font.Style = []
      HintProps.Color = 13041663
      HintProps.ShowHints = [shScroll, shCollapsed, shGutter, shTokens]
      UserRanges = <>
      UndoLimit = 0
      TabMode = tmTabChar
      StaplePen.Color = clGray
      DefaultStyles.SelectioMark.Font.Charset = DEFAULT_CHARSET
      DefaultStyles.SelectioMark.Font.Color = clHighlightText
      DefaultStyles.SelectioMark.Font.Height = -13
      DefaultStyles.SelectioMark.Font.Name = 'Consolas'
      DefaultStyles.SelectioMark.Font.Style = []
      DefaultStyles.SelectioMark.BgColor = clHighlight
      DefaultStyles.SelectioMark.FormatType = ftColor
      DefaultStyles.SearchMark.Font.Charset = DEFAULT_CHARSET
      DefaultStyles.SearchMark.Font.Color = clWhite
      DefaultStyles.SearchMark.Font.Height = -13
      DefaultStyles.SearchMark.Font.Name = 'Consolas'
      DefaultStyles.SearchMark.Font.Style = []
      DefaultStyles.SearchMark.BgColor = clBlack
      DefaultStyles.SearchMark.FormatType = ftColor
      DefaultStyles.CurrentLine.Enabled = False
      DefaultStyles.CurrentLine.Font.Charset = DEFAULT_CHARSET
      DefaultStyles.CurrentLine.Font.Color = clWindowText
      DefaultStyles.CurrentLine.Font.Height = -13
      DefaultStyles.CurrentLine.Font.Name = 'Consolas'
      DefaultStyles.CurrentLine.Font.Style = []
      DefaultStyles.CurrentLine.FormatType = ftBackGround
      DefaultStyles.CurrentLine.FormatFlags = [ffBold, ffItalic, ffUnderline, ffStrikeOut]
      DefaultStyles.CollapseMark.Font.Charset = DEFAULT_CHARSET
      DefaultStyles.CollapseMark.Font.Color = clSilver
      DefaultStyles.CollapseMark.Font.Height = -13
      DefaultStyles.CollapseMark.Font.Name = 'Consolas'
      DefaultStyles.CollapseMark.Font.Style = []
      DefaultStyles.CollapseMark.FormatType = ftColor
      DefaultStyles.CollapseMark.BorderTypeLeft = blSolid
      DefaultStyles.CollapseMark.BorderColorLeft = clSilver
      DefaultStyles.CollapseMark.BorderTypeTop = blSolid
      DefaultStyles.CollapseMark.BorderColorTop = clSilver
      DefaultStyles.CollapseMark.BorderTypeRight = blSolid
      DefaultStyles.CollapseMark.BorderColorRight = clSilver
      DefaultStyles.CollapseMark.BorderTypeBottom = blSolid
      DefaultStyles.CollapseMark.BorderColorBottom = clSilver
      SyncEditing.SyncRangeStyle.Font.Charset = DEFAULT_CHARSET
      SyncEditing.SyncRangeStyle.Font.Color = clWindowText
      SyncEditing.SyncRangeStyle.Font.Height = -13
      SyncEditing.SyncRangeStyle.Font.Name = 'Consolas'
      SyncEditing.SyncRangeStyle.Font.Style = []
      SyncEditing.SyncRangeStyle.BgColor = 14745568
      SyncEditing.SyncRangeStyle.FormatType = ftBackGround
      SyncEditing.ActiveWordsStyle.Font.Charset = DEFAULT_CHARSET
      SyncEditing.ActiveWordsStyle.Font.Color = clWindowText
      SyncEditing.ActiveWordsStyle.Font.Height = -13
      SyncEditing.ActiveWordsStyle.Font.Name = 'Consolas'
      SyncEditing.ActiveWordsStyle.Font.Style = []
      SyncEditing.ActiveWordsStyle.FormatType = ftBackGround
      SyncEditing.ActiveWordsStyle.BorderTypeLeft = blSolid
      SyncEditing.ActiveWordsStyle.BorderColorLeft = clBlue
      SyncEditing.ActiveWordsStyle.BorderTypeTop = blSolid
      SyncEditing.ActiveWordsStyle.BorderColorTop = clBlue
      SyncEditing.ActiveWordsStyle.BorderTypeRight = blSolid
      SyncEditing.ActiveWordsStyle.BorderColorRight = clBlue
      SyncEditing.ActiveWordsStyle.BorderTypeBottom = blSolid
      SyncEditing.ActiveWordsStyle.BorderColorBottom = clBlue
      SyncEditing.InactiveWordsStyle.Font.Charset = DEFAULT_CHARSET
      SyncEditing.InactiveWordsStyle.Font.Color = clWindowText
      SyncEditing.InactiveWordsStyle.Font.Height = -13
      SyncEditing.InactiveWordsStyle.Font.Name = 'Consolas'
      SyncEditing.InactiveWordsStyle.Font.Style = []
      SyncEditing.InactiveWordsStyle.FormatType = ftBackGround
      SyncEditing.InactiveWordsStyle.BorderTypeBottom = blSolid
      SyncEditing.InactiveWordsStyle.BorderColorBottom = clBtnFace
      Options = [soOverwriteBlocks, soEnableBlockSel, soHideDynamic, soAutoIndentMode, soBackUnindent, soGroupUndo, soDragText, soScrollLastLine, soSmartCaret, soVariableHorzScrollBar]
      HorzRuler.Font.Charset = DEFAULT_CHARSET
      HorzRuler.Font.Color = clWindowText
      HorzRuler.Font.Height = -11
      HorzRuler.Font.Name = 'Consolas'
      HorzRuler.Font.Style = []
      TextMargins = <
        item
          Pen.Color = clSilver
          RulerMark = False
        end>
      Caret.Insert.Width = -2
      Caret.Overwrite.Width = 100
      Caret.ReadOnly.Width = -1
      Caret.Custom.Width = -2
      Transparent = False
      Alignment = taLeftJustify
      Align = alClient
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentColor = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object SyntaxTreeView1: TSyntaxTreeView
      Left = 0
      Top = 0
      Width = 145
      Height = 242
      SyntaxMemo = SyntaxMemo1
      AutoSynchronize = False
      Align = alLeft
      UpdateDelay = 500
      Indent = 19
      TabOrder = 1
    end
  end
  object FSynt: TSyntAnalyzer
    Formats = <
      item
        DisplayName = 'Default'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        FormatType = ftCustomFont
      end
      item
        DisplayName = 'Marked block'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        BgColor = clHighlight
        FormatType = ftColor
      end>
    TokenRules = <>
    BlockRules = <>
    CodeTemplates = <>
    SubAnalyzers = <>
    TokenTypeNames.Strings = (
      'Unknown'
      'Comment'
      'Identifier'
      'Symbol'
      'String'
      'Integer const'
      'Float const'
      'Hex const'
      'Char const'
      'Preprocessor')
    MarkedBlockStyle = 'Marked block'
    DefaultStyleName = 'Default'
    Charset = DEFAULT_CHARSET
    Left = 176
    Top = 544
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Consolas'
    Font.Style = []
    Left = 16
    Top = 384
  end
  object ImageList1: TImageList
    Height = 13
    Left = 68
    Top = 384
    Bitmap = {
      494C010106000900040010000D00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001A0000000100200000000000001A
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000000000000000000008484
      8400C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000000000000000000008484
      8400FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60000000000000000000000000000000000848484000000
      0000C6C6C600FFFFFF00C6C6C6008484840084848400FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00C6C6C60000000000000000000000000000000000848484000000
      0000FFFFFF00C6C6C60084848400848484008484840084848400FFFFFF00C6C6
      C600FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00C6C6C60000000000000000000000000000000000848484000000
      0000C6C6C600FFFFFF0084848400848484008484840084848400C6C6C600FFFF
      FF00C6C6C600FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60000000000000000000000000000000000848484000000
      0000FFFFFF00C6C6C600FFFFFF008484840084848400C6C6C600FFFFFF00C6C6
      C600FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      840000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000000000000000000008484
      840000000000FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      84000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000C6C6C6000000000000000000000000000000000000000000000000008484
      84000000000000000000FFFFFF00C6C6C600FFFFFF00C6C6C600000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840000000000000000000000000000000000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000848484008484840000000000000000000000000000000000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008484840084848400000000000000
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
      0000000000000000000000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6000000000000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6000000000000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      000000000000000000000000000000000000000000008484840000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000000000008484840000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000000000008484840000000000FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C6000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6
      C60000000000000000000000000000000000000000008484840000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000000000008484840000000000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000000000008484840000000000C6C6
      C600FFFFFF00C6C6C60084848400C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000008484
      8400C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000000000008484840000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000000000008484840000000000FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000000000008484840000000000FFFF
      FF00C6C6C600848484008484840084848400C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C6000000000000000000000000000000000000000000000000008484
      8400C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000000000008484840000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000000000008484840000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000000000008484840000000000C6C6
      C6008484840084848400848484008484840084848400C6C6C600FFFFFF00C6C6
      C600C6C6C6000000000000000000000000000000000000000000848484000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C6000000000000000000000000008484840000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000000000008484840000000000FFFF
      FF000000000000000000FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000000000008484840000000000FFFF
      FF008484840084848400C6C6C600848484008484840084848400C6C6C600FFFF
      FF00C6C6C6000000000000000000000000000000000000000000848484000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C6000000000000000000000000008484840000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000000000008484840000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
      FF00C6C6C600000000000000000000000000000000008484840000000000C6C6
      C60084848400C6C6C600FFFFFF00C6C6C600848484008484840084848400C6C6
      C600C6C6C6000000000000000000000000000000000000000000848484000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C6000000000000000000000000008484840000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000000000008484840000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
      FF00C6C6C600000000000000000000000000000000008484840000000000FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C6008484840084848400FFFF
      FF00C6C6C6000000000000000000000000000000000000000000848484000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C6000000000000000000000000008484840000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000000000008484840000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00C6C6C600000000000000000000000000000000008484840000000000C6C6
      C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C60084848400C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000008484
      840000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000000000008484840000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000000000008484840000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000000000008484840000000000FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C6000000000000000000000000000000000000000000000000008484
      84000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000C6C6C6000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      0000848484008484840000000000000000000000000000000000848484008484
      8400000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008484840084848400000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000400000001A0000000100010000000000D00000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FC3FFC3F00000000
      F00FF00F00000000E007E00700000000E007E00700000000C003C00300000000
      C003C00300000000C003C00300000000C003C00300000000E007E00700000000
      E007E00700000000F00FF00F00000000FC3FFC3F00000000FFFFFFFFFFFFFFFF
      800780078007FC3F800780078007F00F800780078007E007800780078007E007
      800780078007C003800780078007C003800780078007C003800780078007C003
      800780078007E007800780078007E007800780078007F00F800780078007FC3F
      00000000000000000000000000000000000000000000}
  end
  object SyntAnalyzer2: TSyntAnalyzer
    Formats = <
      item
        DisplayName = 'Default'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        FormatType = ftCustomFont
      end
      item
        DisplayName = 'Marked block'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        BgColor = clHighlight
        FormatType = ftColor
      end
      item
        DisplayName = 'Rule'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
      end
      item
        DisplayName = 'Term'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
      end
      item
        DisplayName = 'TermNoCase'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
      end
      item
        DisplayName = 'Comment'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
      end
      item
        DisplayName = 'Symbol'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
      end
      item
        DisplayName = 'Token type'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
      end
      item
        DisplayName = 'Rule def'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
      end
      item
        DisplayName = 'Cur rule'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        BgColor = 15794175
        FormatType = ftBackGround
      end>
    TokenRules = <
      item
        DisplayName = 'Comment 1'
        StyleName = 'Comment'
        Expression = '//.*'#13#10
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'Comment 2'
        StyleName = 'Comment'
        Expression = '(?s)/\*.*?(\*/|\Z)'#13#10
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'Term'
        StyleName = 'Term'
        TokenType = 1
        Expression = '".*?"'#13#10
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'TermNoCase'
        StyleName = 'TermNoCase'
        TokenType = 2
        Expression = #39'.*?'#39#13#10
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'Token rule'
        StyleName = 'Token type'
        TokenType = 7
        Expression = '<.*?(>|$)'#13#10
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'Rule'
        StyleName = 'Rule'
        TokenType = 3
        Expression = '\w+'#13#10
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'Equal'
        StyleName = 'Symbol'
        TokenType = 4
        Expression = '='#13#10
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'Or'
        StyleName = 'Symbol'
        TokenType = 5
        Expression = '\|'#13#10
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'Rule stop'
        StyleName = 'Symbol'
        TokenType = 6
        Expression = ';'#13#10
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'Repeater'
        StyleName = 'Symbol'
        Expression = '[\*\?\+]'#13#10
        ColumnFrom = 0
        ColumnTo = 0
      end
      item
        DisplayName = 'SubRule'
        StyleName = 'Symbol'
        TokenType = 8
        Expression = '[\(\)]'
        ColumnFrom = 0
        ColumnTo = 0
      end>
    BlockRules = <
      item
        DisplayName = 'Rule def'
        StyleName = 'Rule def'
        BlockType = btTagDetect
        ConditionList = <
          item
            TokenTypes = 16
          end
          item
            TokenTypes = 8
          end>
        IdentIndex = 1
        HighlightPos = cpAny
        IgnoreAsParent = False
      end
      item
        DisplayName = 'Rule start'
        StyleName = 'Cur rule'
        ConditionList = <
          item
            TokenTypes = 16
          end
          item
            TokenTypes = 8
          end>
        BlockOffset = 1
        BlockEnd = 'Rule end'
        EndOfTextClose = True
        Highlight = True
        InvertColors = True
        DisplayInTree = False
        DynHighlight = dhRange
        HighlightPos = cpRange
        CollapseFmt = '%s1 ...'
        SelfClose = True
        IgnoreAsParent = False
      end
      item
        DisplayName = 'Rule end'
        BlockType = btRangeEnd
        ConditionList = <
          item
            TokenTypes = 64
          end>
        HighlightPos = cpAny
        IgnoreAsParent = False
      end>
    CodeTemplates = <>
    SubAnalyzers = <>
    SampleText.Strings = (
      'skip = <Comment> | '
      '       <preprocessor>'
      ''
      'root = rule*;'
      ''
      'rule = <Rule> (<Equal> item+ branches*) <Stop>?;'
      ''
      'branches = <Or> item+;'
      ''
      'item =  <Rule> | '
      '        <Token rule ref.> | '
      '        <Term> | '
      '        <TermNoCase>;')
    TokenTypeNames.Strings = (
      'Comment'
      'Term'
      'TermNoCase'
      'Rule'
      'Equal'
      'Or'
      'Stop'
      'Token rule ref.'
      'SubRule')
    MarkedBlockStyle = 'Marked block'
    DefaultStyleName = 'Default'
    LexerName = 'Highlighter for gramma editor'
    Charset = DEFAULT_CHARSET
    Left = 120
    Top = 528
  end
  object AutoCompletePopup1: TAutoCompletePopup
    ShowWhenNone = False
    StartString = '<'
    OnCheckChar = AutoCompletePopup1CheckChar
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Consolas'
    Font.Style = []
    IntegralHeight = True
    ItemHeight = 16
    BgColor = clWindow
    SyntMemo = SyntaxMemo9
    Width = 200
    Height = 200
    ToolHint.Left = 0
    ToolHint.Top = 0
    ToolHint.Width = 0
    ToolHint.Height = 0
    Controls = <>
    Left = 48
    Top = 536
  end
  object HyperlinkHighlighter: THyperlinkHighlighter
    Rules = <
      item
        DisplayName = 'http & ftp'
        Expression = 
          '(https?|ftp):// (\w+\:\w+@)? [\w\d\-]+(\.[\w\d\-]+)+(:\d\d?\d?\d' +
          '?\d?)?(((/~?[%+\w\d\-\\\.,=]*)+)*)(\?[^\s="'#39']+=[^\s=&"'#39']+(&[^\s=' +
          '&"'#39']+ =?([^\s=&"'#39']+)? )*)?((\#|=)[\w\d\-=,%+]+)?'
        ShellCommand = '\0'
      end
      item
        DisplayName = 'http (www)'
        Expression = 
          'www(\.[\w\d\-]+)+(:\d\d?\d?\d?\d?)?(((/[%+\w\d\-\\\.]*)+)*)(\?[^' +
          '\s=&"]+=?[^\s=&"]+(&[^\s=&"]+=[^\s=&"]+)*)?(\#[\w\d\-%+]+)?'
        ShellCommand = 'http://\0'
      end
      item
        DisplayName = 'e-mail (mailto)'
        Expression = 'mailto:\s*[_a-z\d\-\.]+@[_a-z\d\-]+(\.[_a-z\d\-]+)+'
        ShellCommand = '\0'
      end
      item
        DisplayName = 'e-mail'
        Expression = '\b[_a-z\d\-\.]+@[_a-z\d\-]+(\.[_a-z\d\-]+)+'
        ShellCommand = 'mailto:\0'
      end>
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -13
    Style.Font.Name = 'Consolas'
    Style.Font.Style = [fsUnderline]
    Editor = SyntaxMemo8
    Left = 28
    Top = 440
  end
end
