" tuck backup/undo files somewhere that doesn't pollute working directories
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set undodir=~/.vim/tmp


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Pops up RGB color picker
nmap <C-b> <Plug>vCoolor
imap <C-b> <Plug>vCoolorI
nmap <M-b> <Plug>vCoolorR
imap <M-b> <Plug>vCoolorRI

" Remap arrow keys because they broke when upgrading to vim 7.3
" Most people could remove this
map! [D <Left>
map! [C <Right>
map! [A <Up>
map! [B <Down>
inoremap [D <Left>
inoremap [C <Right>
inoremap [A <Up>
inoremap [B <Down>

map + i<Space><ESC>W

" make CTRL-J and CTRL-K navigate between buffers
map <C-k> :bn<CR>
map <C-j> :bp<CR>

" make capitalized versions of :w and :q operate as you'd expect
command! -bang Q quit<bang>
command! -bang W write<bang>

" map undo tree to F5 (navigate through under states)
nnoremap <F5> :GundoToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax Files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au BufRead,BufNewFile *.htm,*.html set filetype=html
au! Syntax html source ~/.vim/syntax/html.vim

au BufRead,BufNewFile *.php,*.php set filetype=php
au! Syntax php source ~/.vim/syntax/php.vim

au BufRead,BufNewFile *.twig set filetype=twig
au! Syntax twig source ~/.vim/syntax/twig.vim

au BufRead,BufNewFile *.sass,*.sass set filetype=sass
au! Syntax sass source ~/.vim/syntax/sass.vim

au BufRead,BufNewFile *.scss,*.scss set filetype=scss
au! Syntax scss source ~/.vim/syntax/scss.vim

au BufRead,BufNewFile *.haml,*.haml set filetype=haml
au! Syntax haml source ~/.vim/syntax/haml.vim

au BufRead,BufNewFile *.jade,*.jade set filetype=jade
au! Syntax jade source ~/.vim/syntax/jade.vim

au BufRead,BufNewFile *.blade.php,*.blade.php set filetype=blade
au! Syntax jade source ~/.vim/bundles/vim-blade/syntax/blade.vim


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"
" Pathogen
"
call pathogen#infect()
filetype off " Pathogen needs to run before plugin indent on
call pathogen#incubate()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'

filetype plugin indent on " this needs to happen after Pathogen

"
" Airline
"

" use the powerline fonts
let g:airline_powerline_fonts = 1

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" show buffers
let g:airline#extensions#tabline#show_buffers = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

let g:airline#extensions#tabline#tab_min_count = 0

" only show filename in buffer tab
let g:airline#extensions#tabline#fnamemod = ':t'

" define buffer tab separator characters
let g:airline#extensions#tabline#left_sep = '⮀'
let g:airline#extensions#tabline#left_alt_sep = '⮁'
let g:airline#extensions#tabline#right_sep = '⮂'
let g:airline#extensions#tabline#right_alt_sep = '⮃'

" Set airline symbols
let g:airline_symbols = {}
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'

"
" Tagbar
"
" set F8 to toggle tagbar
nmap <F8> :TagbarToggle<CR>
let g:tagbar_phpctags_bin='/usr/local/bin'

set tags=~/.vim/tags/laravel

"
" Detect Indent
"
"autocmd BufReadPost * :DetectIndent
"let g:detectindent_preferred_expandtab = 1
"let g:detectindent_preferred_indent = 2

"
" Zen Coding
"
let g:user_zen_expandabbr_key = '<c-e>'
let g:use_zen_complete_tag = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" spaces instead of tabs. Prefer 2 spaces
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab

" cursor style in insert mode
" comment this out if the cursor looks all funky
" let &t_SI .= "\e[3 q"
" let &t_EI .= "\e[1 q"

" left-edge line numbering
set nu
hi LineNr ctermfg=black ctermbg=none

" possibly helpful with the whole up arrow mapping issue
set nocompatible

" Sets subtle column marker at 80 chars
set colorcolumn=80
highlight ColorColumn ctermbg=8 cterm=bold

set so=7 " Set 7 lines to the curors - when moving vertical..

"Turn on WiLd menu -- autocompletion for vim commands (ex: ':color <Tab>')
set wildmenu

set ruler "Always show current position

set cmdheight=2 "The commandbar height

set hid "Change buffer - without saving

set backspace=indent,eol,start " make backspace work as expected
set whichwrap+=<,>,h,l

set ignorecase "Ignore case when searching
set smartcase

set hlsearch "Highlight search terms

set incsearch "Make search act like search in modern browsers
set nolazyredraw "Don't redraw while executing macros

set magic "Set magic on, for regular expressions

set showmatch "Show matching bracets when text indicator is over them
set mat=2 "How many tenths of a second to blink

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" List characters
set listchars=trail:.,tab:██,eol:·
highlight SpecialKey guifg=red ctermfg=black cterm=none

" highlight current line
set cursorline
hi CursorLine cterm=bold ctermbg=black  ctermfg=none guibg=darkred guifg=white

" tab (not tab characters, but tab screen) colors
hi TabLine     ctermfg=white ctermbg=green cterm=none
hi TabLineSel  ctermfg=white ctermbg=none  cterm=none
hi TabLineFill ctermfg=red   ctermbg=green cterm=none



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set term=screen-256color
" if $TERM == 'screen'
"  set term=xterm
" endif

syntax enable
if has('gui_running')
    set background=dark
else
    set background=dark
endif
set t_Co=16
let g:solarized_termcolors=256
colorscheme solarized
set encoding=utf8

try
    lang en_US
catch
endtry



""""""""""""""""""""""""""""""
" Visual mode related
""""""""""""""""""""""""""""""

" In visual mode when you press * or # to search for the current selection
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>

" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSearch('gv')<CR>
map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>

function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

" From an idea by Michael Naumann
function! VisualSearch(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


""""""""""""""""""""""""""""""
" Other helpful stuff
""""""""""""""""""""""""""""""

" remove trailing whitespace when buffer is saves
autocmd BufWritePre * :%s/\s\+$//e

" allows ALT keys to be mapped
" see: http://stackoverflow.com/a/10216459
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw
set timeout ttimeoutlen=50
