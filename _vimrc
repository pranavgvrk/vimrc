" Remove extra white spaces if there are any at the end of the line
au InsertLeave * %s/\s\+$//e

" Highlight lines containing TODO in yellow color
highlight ToDo ctermbg=yellow guibg=yellow
au BufNewFile,BufRead * match ToDo /.*TODO.*/


set showcmd
set showmatch
set ignorecase
set smartcase
set incsearch
set autowrite
"set hidden
set mouse=a
set nu
set rnu
set foldmethod=syntax
set cul
set wildmenu
set guifont=Courier_New:h12:cANSI:qDRAFT
set autoread
set belloff=all
set tabstop=4
set softtabstop=0
"set cindent
set smartindent
set shiftwidth=4
set backspace=eol,start,indent
set nobackup
set noundofile
set spell
set spelllang=en
set noexpandtab
set splitbelow splitright
set clipboard=unnamed

inoremap +<SPACE> <SPACE>+<SPACE>
inoremap -<SPACE> <SPACE>-<SPACE>
inoremap *<SPACE> <SPACE>*<SPACE>
inoremap //<SPACE> <SPACE>//<SPACE>
inoremap /<SPACE> <SPACE>/<SPACE>
inoremap =<SPACE> <SPACE>=<SPACE>
inoremap ==<SPACE> <SPACE>==<SPACE>
inoremap !=<SPACE> <SPACE>!=<SPACE>
inoremap :<SPACE> <SPACE>:<SPACE>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>
inoremap , ,<SPACE>
nnoremap s" bcw""<ESC>P
nnoremap s' bcw''<ESC>P
nnoremap s( bcw()<ESC>P
nnoremap s{ bcw{}<ESC>P
nnoremap <PageUp>  :echo '<CY> or <CB>'<CR>
nnoremap <PageDown>  :echo '<CE> or <CF>'<CR>
cnoremap <silent> jsf %!python -m json.tool
cnoremap <silent> px :!python %

let g:airline#extensions#tabline#enabled = 1
call airline#add_statusline_func('WindowNumber')
call airline#add_inactive_statusline_func('WindowNumber')

let g:netrw_liststyle = 3
let g:netrw_winsize = 30
let g:netrw_browse_split = 2

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
