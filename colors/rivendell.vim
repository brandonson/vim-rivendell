" vim: tw=0 ts=4 sw=4 et
" Vim color file
"
" Elrond based on Vim's built-in "elflord" color scheme,
" originally by Ron Aaron <ron@ronware.org>
"
" Rivendell based on the "elrond" colorscheme maintained by
" Adrian Perez <aperez@igalia.com>
"

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "rivendell"

let g:elrond#cursorline   = get(g:, 'elrond#cursorline',         1)
let g:elrond#cursorline16 = get(g:, 'elrond#cursorline16' , 'bold')

hi Member ctermfg=12 guifg=#3492d1
hi Variable ctermfg=7 guifg=#aaaaaa
hi link VariableRef Variable
hi Namespace ctermfg=3 guifg=DarkYellow
hi EnumConstant ctermfg=11 guifg=Yellow
hi Macro ctermfg=98 guifg=#875fd7
hi cDefine ctermfg=Cyan guifg=Cyan

hi link TagDecl Member
hi link RecordDecl Member

hi link FieldDecl Member
hi link StructDecl Type
hi link TypedefDecl Type

hi DiffAdd ctermbg=22 guibg=#002200
hi DiffChange ctermbg=64 guibg=#222200
hi DiffDelete ctermbg=52 guibg=#220000
hi DiffText ctermbg=58 guibg=#333300

hi Normal     guifg=#FFA500  guibg=black

hi Comment    term=italic    ctermfg=Blue    guifg=#80a0ff
hi Constant   term=underline ctermfg=Magenta         guifg=Magenta
hi Special    term=bold      ctermfg=DarkMagenta     guifg=DarkMagenta
hi Identifier                ctermfg=179 guifg=#40ffff
hi Keyword  term=bold      ctermfg=Yellow gui=bold guifg=#aa4444
hi PreProc    term=underline ctermfg=LightBlue       guifg=#875fd7
hi Type       term=underline ctermfg=32      guifg=#60ff60 gui=bold
hi Structure ctermfg=Cyan guifg=Cyan
hi cType	ctermfg=Cyan guifg=Cyan
hi cStorageClass ctermfg=Cyan guifg=#00ffff
hi Function   term=bold      ctermfg=Green           guifg=#1acc64
hi FunctionDecl ctermfg=35   guifg=#00af5f
hi Operator                  ctermfg=Red             guifg=Red
hi Ignore                    ctermfg=black           guifg=bg
hi Error      term=reverse   ctermbg=Red    ctermfg=White guibg=Red  guifg=White
hi Todo       term=standout  ctermbg=Yellow ctermfg=20 guifg=Blue guibg=Yellow

" CoffeeScript specific stuff
hi coffeeRequire ctermfg=57 term=bold
hi String ctermfg=13 guifg=Magenta
hi Number ctermfg=5 guifg=DarkMagenta
hi link Float          Number

hi Conditional ctermfg=34 term=bold guifg=#00af00
hi link Repeat Conditional

hi Statement ctermfg=154 term=bold guifg=#afff00
hi link Exception Statement

hi Boolean ctermfg=92 term=bold term=standout guifg=#8600d7

hi link Character      Constant
hi link Label          Keyword
hi link Include        PreProc
hi link Define         PreProc
hi link PreCondit      PreProc
hi link StorageClass   Type
hi link Typedef        Type
hi link Tag            Special
hi link SpecialChar    Special
hi link Delimiter      Special
hi link SpecialComment Special
hi link Debug          Special

highlight CursorLine NONE

if &t_Co == 256
    if g:elrond#cursorline
        set cursorline
        highlight CursorLine ctermbg=233 guibg=#222222
    endif

    highlight CursorLineNr  ctermbg=235 ctermfg=246 guibg=#262626 guifg=#949494
    highlight LineNr        ctermbg=234 ctermfg=238 guibg=#1c1c1c guifg=#444444
    highlight SignColumn    ctermbg=234 guibg=#1c1c1c
    highlight Pmenu         ctermbg=235 ctermfg=White guibg=#262626 guifg=White
    highlight PmenuSel      ctermbg=238 ctermfg=White guibg=#444444 guifg=White
    highlight PmenuSbar     ctermbg=238 guibg=#444444
    highlight PmenuThumb    ctermbg=240 guibg=#585858
    highlight VertSplit     ctermbg=235 ctermfg=235 guibg=#262626 guifg=#262626
    highlight StatusLine    ctermbg=235 ctermfg=230 cterm=NONE guibg=#262626 guifg=#262626
    highlight StatusLineNC  ctermbg=235 ctermfg=246 cterm=NONE guibg=#262626 guifg=#949494
    highlight TabLine       ctermbg=235 ctermfg=246 cterm=NONE guibg=#262626 guifg=#949494
    highlight TabLineSel    ctermbg=246 ctermfg=235 guifg=#949494 guibg=#262626 
    highlight TabLineFill   ctermbg=235             cterm=NONE guibg=#262626

    highlight LiningItem    ctermbg=236 ctermfg=252 guibg=#303030 guifg=#d0d0d0
    highlight LiningVertSep ctermbg=236 ctermfg=240 guibg=#303030 guifg=#585858
    highlight LiningBufName ctermbg=237 ctermfg=252 cterm=bold guibg=#3a3a3a guifg=#d0d0d0
    highlight LiningLnCol   ctermbg=237 ctermfg=252 guibg=#3a3a3a guifg=#d0d0d0
else
    "
    " Common definitions for 8 & 16 color terminals
    "
    highlight CursorLineNr  ctermbg=DarkGrey  ctermfg=White     cterm=bold
    highlight LineNr        ctermbg=DarkGrey  ctermfg=LightGrey
    highlight SignColumn    ctermbg=Black                       cterm=bold
    highlight VertSplit     ctermbg=DarkGrey  ctermfg=DarkGrey
    highlight StatusLineNC  ctermbg=LightGrey ctermfg=0         cterm=reverse,bold
    highlight TabLine       ctermbg=DarkGrey  ctermfg=LightGrey cterm=NONE
    highlight TabLineSel    ctermbg=LightGrey ctermfg=White
    highlight TabLineFill   ctermbg=DarkGrey                    cterm=NONE

    if &t_Co == 16
        if g:elrond#cursorline
            set cursorline
            if g:elrond#cursorline16 == 'bold'
                highlight CursorLine cterm=bold
            elseif g:elrond#cursorline16 == 'reverse'
                highlight CursorLine cterm=reverse
            elseif g:elrond#cursorline16 == 'underline'
                highlight CursorLine cterm=underline
            endif
        endif

        highlight Pmenu         ctermbg=DarkGrey  ctermfg=White
        highlight PmenuSel      ctermbg=LightGrey ctermfg=White     cterm=bold
        highlight PmenuSbar     ctermbg=DarkGrey  ctermfg=White
        highlight PmenuThumb    ctermbg=DarkGrey  ctermfg=LightGrey

        highlight StatusLine    ctermbg=White     ctermfg=0         cterm=reverse,bold
        highlight LiningItem    ctermbg=DarkGrey  ctermfg=White cterm=NONE
        highlight LiningBufName ctermbg=LightGrey ctermfg=Black cterm=bold
    else
        " Cursor lines with 8 colors only are quite terribly looking
        set nocursorline

        highlight Pmenu         ctermfg=NONE ctermbg=NONE  cterm=reverse,bold
        highlight PmenuSel      ctermfg=Cyan ctermbg=Black cterm=reverse
        highlight PmenuSbar     ctermfg=Cyan ctermbg=NONE
        highlight PmenuThumb    ctermfg=Cyan ctermbg=NONE  cterm=bold

        highlight StatusLine    ctermfg=NONE ctermbg=NONE  cterm=reverse
        highlight StatusLineNC  ctermfg=NONE ctermbg=NONE  cterm=reverse,bold
        highlight LiningBufName ctermfg=Cyan ctermbg=Black cterm=reverse
        highlight link LiningItem StatusLine
    endif

    highlight link LiningLnCol   LiningBufName
    highlight link LiningVertSep LiningItem
endif

highlight LiningWarn  ctermbg=Brown ctermfg=Yellow
highlight LiningError ctermbg=Red   ctermfg=White
highlight link LiningVcsInfo LiningItem

