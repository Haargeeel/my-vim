
" stuff on start
syntax enable
filetype plugin indent on
set number
autocmd VimEnter * if !argc() | NERDTree | endif
autocmd VimEnter * wincmd p
autocmd VimEnter * highlight LineNr ctermfg=grey
"autocmd VimEnter * colorscheme beans

" colorscheme
set guifont=Menlo:h12
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

set scrolloff=10

" mapping
let mapleader = ","
imap jj <esc>
nmap <left> <C-w>W
nmap <right> <C-w>w
nmap <up> 5<C-y>
nmap <down> 5<C-e>
nmap <S-h> <C-w>W
nmap <S-l> <C-w>w
nmap <leader>n :NERDTree<RETURN>
"nmap <up> 50kzz
"nmap <down> 50jzz
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {}<ESC>i
imap <leader>c console.log()<ESC>i
imap <leader>e \emph{}<ESC>i
imap <leader>t {\ttfamily }<ESC>i
nmap <leader>m <ESC>:LatexTOCToggle<RETURN>
imap <leader>m <ESC>:LatexTOCToggle<RETURN>

" visual shifting (does not exit Visual Mode)
vnoremap < <gv
vnoremap > >gv

" save swap files in a special directory
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" Latex
let g:LatexBox_latexmk_async=1
let g:LatexBox_latexmk_preview_continuously=1
let g:LatexBox_viewer = "open -a Skim"
let g:LatexBox_latexmk_options = "-pvc"
let g:LatexBox_quickfix=2
let g:LatexBox_quickfix=3

" setup pathogen to manage your plugins
call pathogen#infect()

