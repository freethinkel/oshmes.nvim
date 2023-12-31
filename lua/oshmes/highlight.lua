local utils = require("oshmes.utils")

local M = {}

M.load = function(theme)
  return {
    Normal                      = { fg = theme.colors.foreground, bg = theme.colors.background },
    NormalNC                    = "Normal",
    SecondaryBackground         = {
      fg = utils.mixColors(theme.colors.foreground, theme.colors.background, 0.2),
      bg = utils.darken(theme.colors.background, 0.15)
    },
    SecondaryBackgroundEmpty    = {
      fg = utils.darken(theme.colors.background, 0.15),
      bg = utils.darken(theme.colors.background, 0.15)
    },
    LineNr                      = {
      fg = utils.mixColors(theme.colors.foreground, theme.colors.background, 0.4), },
    CursorLineNr                = {
      fg = utils.mixColors(theme.colors.green, theme.colors.foreground, 0.9), },
    CursorLine                  = {
      bg = utils.mixColors(theme.colors.background, theme.colors.foreground, 0.07),
      -- ctermfg = "white"
    },
    Visual                      = { bg = utils.mixColors(theme.colors.background, theme.colors.blue, 0.2), },
    SignColumn                  = { bg = theme.colors.background },
    NonText                     = "Comment",
    NormalFloat                 = "Normal",
    VertSplit                   = "SecondaryBackgroundEmpty",
    Title                       = {
      fg = utils.mixColors(theme.colors.foreground, theme.colors.background, 0.1),
    },
    SpecialKey                  = { fg = theme.colors.cyan },
    FoldColumn                  = { bg = "none" },
    Folded                      = {
      bg = utils.mixColors(theme.colors.background, theme.colors.foreground, 0.05),
      fg = utils.mixColors(theme.colors.foreground, theme.colors.background, 0.05)
    },
    Search                      = {
      bg = utils.mixColors(theme.colors.yellow, theme.colors.background, 0.8),
      underline = false,
    },
    Question                    = { fg = utils.mixColors(theme.colors.green, theme.colors.background, 0.25) },
    IncSearch                   = "Search",
    MatchParen                  = {
      bg = utils.mixColors(theme.colors.background, theme.colors.foreground, 0.2),
    },
    DiffAdd                     = { bg = utils.mixColors(theme.colors.green, theme.colors.background, 0.85) },
    DiffAdded                   = "DiffAdd",
    DiffChange                  = { bg = utils.mixColors(theme.colors.blue, theme.colors.background, 0.8) },
    DiffChangeDelete            = { fg = theme.colors.red, },
    DiffModified                = { fg = theme.colors.yellow, },
    DiffDelete                  = { bg = utils.mixColors(theme.colors.red, theme.colors.background, 0.85), },
    DiffRemoved                 = "DiffDelete",
    DiffText                    = { bg = utils.mixColors(theme.colors.blue, theme.colors.background, 0.7) },
    diffChanged                 = "DiffChange",
    Pmenu                       = { bg = theme.colors.background },
    PmenuSel                    = {
      bg = utils.mixColors(theme.colors.background, theme.colors.foreground, 0.2),
    },
    PmenuThumb                  = { bg = utils.mixColors(theme.colors.background, theme.colors.foreground, 0.5) },
    PmenuSbar                   = { bg = utils.mixColors(theme.colors.background, theme.colors.foreground, 0.3) },

    BufferInactive              = "Normal",
    Directory                   = { fg = theme.colors.foreground },
    Function                    = { fg = theme.colors.magenta },
    PreProc                     = { fg = theme.colors.yellow, },

    -- LAZY
    -- LazyReasonEvent             = { fg = theme.colors.yellow, },
    -- LazyReasonStart             = { fg = theme.colors.cyan, },

    -- SPECTRE
    SpectreFile                 = { fg = utils.mixColors(theme.colors.foreground, theme.colors.background, 0.3) },
    SpectreBorder               = { fg = utils.mixColors(theme.colors.foreground, theme.colors.background, 0.9), bg = nil },
    SpectreDir                  = "SpectreFile",
    SpectreHeader               = "Comment",
    SpectreBody                 = { fg = utils.mixColors(theme.colors.foreground, theme.colors.blue, 0.8) },
    SpectreSearch               = { fg = "none", bg = utils.mixColors(theme.colors.background, theme.colors.red, 0.2) },
    SpectreReplace              = { fg = "none", bg = utils.mixColors(theme.colors.background, theme.colors.green, 0.2) },

    -- WHICH KEY
    WhichKeyFloat               = "SecondaryBackground",
    WhichKeyGroup               = { fg = theme.colors.cyan },

    -- MULTI_CURSOR
    VM_Insert                   = { bg = utils.mixColors(theme.colors.green, theme.colors.background, 0.4) },
    VM_Cursor                   = "Cursor",
    VM_Extend                   = { bg = utils.mixColors(theme.colors.cyan, theme.colors.background, 0.2) },
    VM_Mono                     = "Cursor",

    -- SYNTAX
    Error                       = {
      bg = utils.mixColors(theme.colors.red, theme.colors.background, 0.4),
      fg = theme.colors.foreground,
    },
    ErrorMsg                    = "Error",
    NvimInternalError           = "Error",
    Identifier                  = {
      fg = utils.mixColors(theme.colors.foreground, theme.colors.background, 0.1),
      bg = nil,
    },
    Comment                     = {
      fg = utils.mixColors(theme.colors.foreground, theme.colors.background, 0.7), bg = nil },
    Type                        = {
      fg = utils.mixColors(theme.colors.foreground, theme.colors.background, 0.1) },

    Operator                    = "Comment",
    Constant                    = { fg = utils.mixColors(theme.colors.yellow, theme.colors.foreground, 0.3) },
    Statement                   = { fg = theme.colors.yellow },
    Structure                   = { fg = theme.colors.magenta },
    Special                     = { fg = theme.colors.blue, },
    Conceal                     = {
      fg = theme.colors.foreground,
      bg = utils.mixColors(theme.colors.background, theme.colors.foreground, 0.2)
    },
    Keyword                     = {
      fg = utils.mixColors(theme.colors.red, theme.colors.foreground, 0.2) },

    -- CSS
    cssClassName                = { fg = theme.colors.magenta },
    cssClassNameDot             = "cssClassName",
    cssFunctionName             = "cssClassName",
    cssProp                     = { fg = theme.colors.yellow },

    -- NVIMTREE
    NvimTreeNormal              = "SecondaryBackground",
    NvimTreeGitDirty            = { fg = theme.colors.blue },
    NvimTreeGitNew              = { fg = theme.colors.green },
    NvimTreeGitDeleted          = { fg = theme.colors.red },
    NvimTreeFolderIcon          = { fg = theme.colors.foreground },
    NvimTreeFolderName          = { fg = theme.colors.foreground },
    NvimTreeWindowPicker        = { bg = theme.colors.blue, fg = theme.colors.background },

    -- NEOTREE
    NeoTreeNormal               = "SecondaryBackground",
    NeoTreeNormalNC             = "NeoTreeNormal",
    NeoTreeCursorLine           = { bg = theme.colors.background },
    NeoTreeGitAdded             = { fg = theme.colors.green },
    NeoTreeGitModified          = { fg = theme.colors.blue },
    NeoTreeGitUnstaged          = { fg = theme.colors.red },
    NeoTreeGitUntracked         = { fg = theme.colors.cyan },
    NeoTreeGitDeleted           = { fg = theme.colors.red },
    NeoTreeTabActive            = "NeoTreeNormal",
    NeoTreeTabInactive          = { bg = theme.colors.background },
    NeoTreeTabSeparatorInactive = { fg = theme.colors.background, bg = theme.colors.background },
    NeoTreeTabSeparatorActive   = "SecondaryBackgroundEmpty",
    NeoTreeTabIndentMarker      = {
      fg = utils.mixColors(theme.colors.foreground, theme.colors.background, 0.9), bg = nil },

    -- CORE STATUSLINE
    -- Statusline                  = {
    --   fg = utils.mixColors(theme.colors.foreground, theme.colors.background, 0.2),
    --   bg = utils.mixColors(theme.colors.background, theme.colors.foreground, 0.1)
    -- },
    StatusLine                  = {
      fg = utils.mixColors(theme.colors.foreground, theme.colors.background, 0.2),
      bg = utils.mixColors(theme.colors.background, theme.colors.foreground, 0.1)
    },
    StatusLineNC                = {
      bg = utils.mixColors(theme.colors.background, theme.colors.foreground, 0.1)
    },

    -- CORE TABUFLINE
    TblineFill                  = "SecondaryBackground",
    TbLineBufOn                 = { fg = theme.colors.foreground, bg = theme.colors.background },
    TbLineBufOff                = "SecondaryBackground",
    TbLineBufOnClose            = "TbLineBufOn",
    TbLineBufOffClose           = "TbLineBufOff",
    TbLineBufOnModified         = "TbLineBufOn",
    TbBufLineBufOffModified     = "TbLineBufOff",

    TbLineTabOff                = "SecondaryBackground",
    TbGotoTab                   = "SecondaryBackground",
    TbLineTabOn                 = "SecondaryBackground",
    TbLineThemeToggleBtn        = "SecondaryBackground",
    TbLineCloseAllBufsBtn       = "SecondaryBackground",

    -- BUFFERLINE
    BufferLineBackground        = "SecondaryBackground",
    BufferLineDevIconLua        = "SecondaryBackground",
    BufferLineCloseButton       = "SecondaryBackground",
    BufferLineFill              = "SecondaryBackground",
    BufferLineSeparator         = "SecondaryBackgroundEmpty",
    BufferLineIndicatorSelected = "SecondaryBackgroundEmpty",
    PanelHeading                = "SecondaryBackground",

    -- INDENTBLANKLINE
    IndentBlanklineChar         = {
      fg = utils.mixColors(theme.colors.foreground, theme.colors.background, 0.9), bg = nil },
    IndentBlanklineContextChar  = {
      fg = utils.mixColors(theme.colors.foreground, theme.colors.background, 0.7), bg = nil },

    -- GITSIGNS

    GitSignsDelete              = { fg = theme.colors.red, bg = "none" },
    GitSignsChange              = { fg = theme.colors.blue, bg = "none" },
    GitSignsAdd                 = { fg = theme.colors.green, bg = "none" },
    GitSignsUntracked           = { fg = theme.colors.cyan },

    -- DIFFVIEW
    DiffviewDiffDelete          = {
      bg = "none",
      fg = utils.mixColors(theme.colors.foreground, theme.colors.background, 0.6)
    },
    DiffviewStatusAdded         = { fg = utils.mixColors(theme.colors.green, theme.colors.background, 0.25), bg = "none" },
    DiffviewStatusUntracked     = { fg = utils.mixColors(theme.colors.green, theme.colors.background, 0.25), bg = "none" },
    DiffviewStatusModified      = { fg = utils.mixColors(theme.colors.blue, theme.colors.background, 0.25), bg = "none" },

    DiffviewFilePanelDeletions  = { fg = utils.mixColors(theme.colors.red, theme.colors.background, 0.25), bg = "none" },
    DiffviewFilePanelInsertions = { fg = utils.mixColors(theme.colors.green, theme.colors.background, 0.25), bg = "none" },

    -- TELESCOPE
    TelescopeTitle              = { fg = theme.colors.cyan },
    TelescopePromptCounter      = { fg = theme.colors.cyan },
    TelescopePromptBorder       = { fg = theme.colors.green, bg = utils.darken(theme.colors.background, 0.1) },
    TelescopeBorder             = "TelescopePromptBorder",
    TelescopeNormal             = { bg = utils.darken(theme.colors.background, 0.1) },
    TelescopeResultsDiffChange  = { fg = theme.colors.blue, },

    -- DEVICONS
    DevIconTs                   = { fg = theme.colors.blue },
    DevIconTsx                  = "DevIconTs",
    DevIconJsx                  = "DevIconTsx",

    -- CMP
    CmpItemAbbr                 = { fg = theme.colors.foreground },
    CmpItemAbbrMatch            = { fg = theme.colors.blue, bold = true },
    CmpDoc                      = { bg = theme.colors.black },
    CmpDocBorder                = { fg = theme.colors.black, bg = theme.colors.black },
    CmpPmenu                    = { bg = theme.colors.black },
    CmpSel                      = "PmenuSel",
    --
    CmpItemKindConstant         = { fg = theme.colors.magenta },
    CmpItemKindFunction         = { fg = theme.colors.cyan },
    CmpItemKindIdentifier       = { fg = theme.colors.magenta },
    CmpItemKindField            = { fg = theme.colors.magenta },
    CmpItemKindVariable         = { fg = theme.colors.magenta },
    CmpItemKindSnippet          = { fg = theme.colors.red },
    CmpItemKindText             = { fg = theme.colors.green },
    CmpItemKindStructure        = { fg = theme.colors.magenta },
    CmpItemKindType             = { fg = theme.colors.blue },
    CmpItemKindKeyword          = { fg = theme.colors.foreground },
    CmpItemKindMethod           = { fg = theme.colors.cyan },
    CmpItemKindConstructor      = { fg = theme.colors.blue },
    CmpItemKindFolder           = { fg = theme.colors.foreground },
    CmpItemKindModule           = { fg = theme.colors.blue },
    CmpItemKindProperty         = { fg = theme.colors.magenta },
    CmpItemKindEnum             = { fg = theme.colors.blue },
    CmpItemKindUnit             = { fg = theme.colors.magenta },
    CmpItemKindClass            = { fg = theme.colors.blue },
    CmpItemKindFile             = { fg = theme.colors.foreground },
    CmpItemKindInterface        = { fg = theme.colors.green },
    CmpItemKindColor            = { fg = theme.colors.foreground },
    CmpItemKindReference        = { fg = theme.colors.magenta },
    CmpItemKindEnumMember       = { fg = theme.colors.purple },
    CmpItemKindStruct           = { fg = theme.colors.magenta },
    CmpItemKindValue            = { fg = theme.colors.cyan },
    CmpItemKindEvent            = { fg = theme.colors.yellow },
    CmpItemKindOperator         = { fg = theme.colors.magenta },
    CmpItemKindTypeParameter    = { fg = theme.colors.magenta },
    CmpItemKindCopilot          = { fg = theme.colors.green },

    -- TREESITTER
    Todo                        = { fg = theme.colors.blue, bg = "none" },
    ['@text.todo.checked']      = { fg = theme.colors.green },
    TSAnnotation                = { fg = theme.colors.foreground, bg = nil, },
    TSAttribute                 = { fg = theme.colors.magenta, bg = nil, },
    TSBoolean                   = { fg = theme.colors.foreground, bg = nil, },
    TSCharacter                 = { fg = theme.colors.foreground, bg = nil, },
    TSComment                   = "Comment",
    TSConstructor               = { fg = theme.colors.blue, bg = nil, },
    TSConditional               = { fg = theme.colors.foreground, bg = nil, },
    TSConstant                  = { fg = utils.mixColors(theme.colors.blue, theme.colors.background, 0.2) },
    TSConstBuiltin              = { fg = theme.colors.foreground, bg = nil, italic = true },
    TSConstMacro                = { fg = theme.colors.foreground, bg = nil, },
    TSError                     = { fg = theme.colors.foreground, bg = nil, },
    TSException                 = { fg = theme.colors.foreground, bg = nil, },
    TSField                     = { fg = theme.colors.foreground, bg = nil, },
    TSFloat                     = { fg = theme.colors.foreground, bg = nil, },
    TSFunction                  = { fg = theme.colors.foreground, bg = nil, },
    TSFuncBuiltin               = { fg = theme.colors.foreground, bg = nil, italic = true },
    TSFuncMacro                 = { fg = theme.colors.foreground, bg = nil, },
    TSInclude                   = {
      fg = utils.mixColors(theme.colors.red, theme.colors.foreground, 0.2) },
    TSKeyword                   = "Keyword",
    TSKeywordFunction           = {
      fg = utils.mixColors(theme.colors.red, theme.colors.foreground, 0.2) },
    TSKeywordOperator           = {
      fg = utils.mixColors(theme.colors.red, theme.colors.foreground, 0.2) },
    TSLabel                     = { fg = theme.colors.foreground, bg = nil, },
    TSMethod                    = { fg = theme.colors.foreground, bg = nil, },
    TSNamespace                 = { fg = theme.colors.foreground, bg = nil, },
    TSNone                      = { fg = theme.colors.foreground, bg = nil, },
    TSNumber                    = { fg = theme.colors.foreground, bg = nil, },
    TSOperator                  = {
      fg = utils.mixColors(theme.colors.red, theme.colors.foreground, 0.2) },
    TSParameter                 = { fg = theme.colors.foreground, bg = nil, },
    TSParameterReference        = { fg = theme.colors.green, bg = nil, },
    TSProperty                  = { fg = theme.colors.magenta, bg = nil, },
    TSPunctBracket              = { fg = utils.mixColors(theme.colors.blue, theme.colors.foreground, 0.1) },
    TSPunctDelimiter            = { fg = theme.colors.foreground, bg = nil, },
    TSPunctSpecial              = { fg = theme.colors.foreground, bg = nil, },
    TSRepeat                    = { fg = theme.colors.foreground, bg = nil, },
    TSString                    = { fg = theme.colors.yellow, bg = nil, },
    TSStringRegex               = { fg = theme.colors.foreground, bg = nil, },
    TSStringEscape              = { fg = theme.colors.foreground, bg = nil, },
    TSSymbol                    = { fg = theme.colors.foreground, bg = nil, },
    TSTag                       = { fg = theme.colors.yellow, bg = nil, },
    TSTagDelimiter              = { fg = theme.colors.foreground, bg = nil, },
    TSText                      = { fg = theme.colors.foreground, bg = nil, },
    TSStrong                    = { fg = nil, bg = nil, bold = true },
    TSEmphasis                  = { fg = theme.colors.foreground, bg = nil, italic = true },
    TSUnderline                 = { fg = theme.colors.foreground, bg = nil, underline = true },
    TSStrike                    = { fg = theme.colors.foreground, bg = nil, strikethrough = true },
    TSTitle                     = { fg = theme.colors.blue, bg = nil, },
    TSLiteral                   = { fg = theme.colors.foreground, bg = nil, },
    TSURI                       = {
      fg = utils.mixColors(theme.colors.blue, theme.colors.foreground, 0.5),
      bg = nil,
      underline = true
    },
    TSType                      = { fg = theme.colors.blue, bg = nil, },
    TSTypeBuiltin               = "TSType",
    TSVariable                  = { fg = theme.colors.foreground, bg = nil, },
    TSVariableBuiltin           = { fg = theme.colors.foreground, bg = nil, italic = true },

    TSDefinition                = { fg = nil, bg = nil, underline = true, sp = theme.colors.foreground },
    TSDefinitionUsage           = { fg = nil, bg = nil, underline = true, sp = theme.colors.foreground },
    TSCurrentScope              = { fg = nil, bg = nil, bold = true },
    ['@comment']                = 'TSComment',
    ['@error']                  = 'TSError',
    ['@none']                   = 'TSNone',
    ['@preproc']                = 'PreProc',
    ['@define']                 = 'Define',
    ['@operator']               = 'TSOperator',
    ['@punctuation.delimiter']  = 'TSPunctDelimiter',
    ['@punctuation.bracket']    = 'TSPunctBracket',
    ['@punctuation.special']    = 'TSPunctSpecial',
    ['@string']                 = 'TSString',
    ['@string.regex']           = 'TSStringRegex',
    ['@string.escape']          = 'TSStringEscape',
    ['@string.special']         = 'SpecialChar',
    ['@character']              = 'TSCharacter',
    ['@character.special']      = 'SpecialChar',
    ['@boolean']                = 'TSBoolean',
    ['@number']                 = 'TSNumber',
    ['@float']                  = 'TSFloat',
    ['@function']               = 'TSFunction',
    ['@function.call']          = 'TSFunction',
    ['@function.builtin']       = 'TSFuncBuiltin',
    ['@function.macro']         = 'TSFuncMacro',
    ['@method']                 = 'TSMethod',
    ['@method.call']            = 'TSMethod',
    ['@constructor']            = 'TSConstructor',
    ['@parameter']              = 'TSParameter',
    ['@keyword']                = 'TSKeyword',
    ['@keyword.function']       = 'TSKeywordFunction',
    ['@keyword.operator']       = 'TSKeywordOperator',
    ['@keyword.return']         = 'TSKeyword',
    ['@conditional']            = 'TSConditional',
    ['@repeat']                 = 'TSRepeat',
    ['@debug']                  = 'Debug',
    ['@label']                  = 'TSLabel',
    ['@include']                = 'TSInclude',
    ['@exception']              = 'TSException',
    ['@type']                   = 'TSType',
    ['@type.builtin']           = 'TSTypeBuiltin',
    ['@type.qualifier']         = 'TSKeyword',
    ['@type.definition']        = 'TSType',
    ['@storageclass']           = 'StorageClass',
    ['@attribute']              = 'TSAttribute',
    ['@field']                  = 'TSField',
    ['@property']               = 'TSProperty',
    ['@variable']               = 'TSVariable',
    ['@variable.builtin']       = 'TSVariableBuiltin',
    ['@constant']               = 'TSConstant',
    ['@constant.builtin']       = 'TSConstant',
    ['@constant.macro']         = 'TSConstant',
    ['@namespace']              = 'TSNamespace',
    ['@symbol']                 = 'TSSymbol',
    ['@text']                   = 'TSText',
    ['@text.diff.add']          = 'DiffAdd',
    ['@text.diff.delete']       = 'DiffDelete',
    ['@text.strong']            = 'TSStrong',
    ['@text.emphasis']          = 'TSEmphasis',
    ['@text.underline']         = 'TSUnderline',
    ['@text.strike']            = 'TSStrike',
    ['@text.title']             = 'TSTitle',
    ['@text.literal']           = 'TSLiteral',
    ['@text.uri']               = 'TSUri',
    ['@text.math']              = 'Number',
    ['@text.environment']       = 'Macro',
    ['@text.environment.name']  = 'Type',
    ['@text.reference']         = 'TSParameterReference',
    ['@text.todo']              = 'Todo',
    ['@text.note']              = 'Tag',
    ['@text.warning']           = 'DiagnosticWarn',
    ['@text.danger']            = 'DiagnosticError',
    ['@tag']                    = 'TSTag',
    ['@tag.attribute']          = 'TSAttribute',
    ['@tag.delimiter']          = 'TSTagDelimiter',

    -- LSP
    CodeActionNumber            = {
      fg = utils.mixColors(theme.colors.cyan, theme.colors.background, 0.1),
      bg = "none"
    },
    ["@lsp.type.enumMember"]    = { fg = theme.colors.foreground },
    ["@lsp.type.function"]      = { fg = theme.colors.magenta },
    ["@lsp.type.variable"]      = { fg = theme.colors.blue },
    ["@lsp.type.namespace"]     = "Identifier",
    DiagnosticHint              = { fg = theme.colors.green },
    DiagnosticError             = { fg = theme.colors.red },
    DiagnosticWarn              = { fg = theme.colors.yellow, undercurl = false, underline = false, },
    DiagnosticInformation       = { fg = theme.colors.green },
    LspSignatureActiveParameter = { fg = theme.colors.black, bg = theme.colors.green },
    DiagnosticVirtualTextWarn   = {
      fg = theme.colors.yellow,
      bg = utils.mixColors(theme.colors.yellow, theme.colors.background, 0.85),
    },
    DiagnosticVirtualTextError  = {
      fg = theme.colors.red,
      bg = utils.mixColors(theme.colors.red, theme.colors.background, 0.85),
    },
    DiagnosticUnderlineWarn     = {
      sp = theme.colors.yellow,
      fg = "none",
      underline = false,
      undercurl = true,
      bg = utils.mixColors(theme.colors.yellow, theme.colors.background, 0.95)
    },
    DiagnosticUnderlineError    = {
      sp = theme.colors.red,
      fg = "none",
      undercurl = true,
      underline = false,
      bg = utils.mixColors(theme.colors.red, theme.colors.background, 0.95)
    },
    -- LSPSAGA
    SagaNormal                  = { bg = theme.colors.background },
    SagaBorder                  = {
      fg = utils.mixColors(theme.colors.blue, theme.colors.background, 0.7),
      bg = theme.colors.background
    }
  }
end

return M
