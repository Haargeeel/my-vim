


" stuff on start
syntax enable
filetype plugin indent on
set number
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd VimEnter * highlight LineNr ctermfg=grey
"autocmd VimEnter * colorscheme beans

" colorscheme
set guifont=Menlo:h13
"set background=light
"let &t_Co=256
"let g:solarized_visibility = "high"
"let g:solarized_contrast = "high"
"let g:solarized_termcolors=256
"colorscheme solarized

" tabs
set tabstop=2
set shiftwidth=2

" 80 lines
set colorcolumn=80
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

" mapping
let mapleader = ","
imap jj <esc>
nmap <left> <C-w>W
nmap <right> <C-w>w
nmap <up> 5<C-y>
nmap <down> 5<C-e>
"nmap <up> 50kzz
"nmap <down> 50jzz
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {}<ESC>i
imap <leader>c console.log()<ESC>i


" setup pathogen to manage your plugins
call pathogen#infect()

