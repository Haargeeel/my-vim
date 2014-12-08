
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
"colorscheme solarized

" tabs
set tabstop=2
set shiftwidth=2
set expandtab

" 80 lines
set colorcolumn=80
highlight ColorColumn ctermbg=red guibg=lightgrey

" for vertical split, with the pipe dividers hidden
:hi clear vertsplit
:hi vertsplit ctermbg=grey ctermfg=grey

set scrolloff=10
set hlsearch
set incsearch
set ic

" set up control p
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|build'

" set vim to chdir for each file
if exists('+autochdir')
  set autochdir
else
  autocmd BufEnter * silent! lcd %:p:h:gs/ /\\ /
endif

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
nmap <leader>g :e#
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {}<ESC>i
imap <leader>c console.log('')<ESC>hi

" visual shifting (does not exit Visual Mode)
vnoremap < <gv
vnoremap > >gv

" save swap files in a special directory
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" Latex stuff
    " Latex break in case of emergency
    " let g:LatexBox_latexmk_async=1
    " let g:LatexBox_latexmk_preview_continuously=1
    " let g:LatexBox_viewer = "open -a Skim"
    " let g:LatexBox_latexmk_options = "-pvc"
    " let g:LatexBox_quickfix=2
    " let g:LatexBox_quickfix=3
    "nmap <leader>m <ESC>:LatexTOCToggle<RETURN>
    "imap <leader>m <ESC>:LatexTOCToggle<RETURN>
    "imap <leader>e \emph{}<ESC>i
    "imap <leader>t {\ttfamily }<ESC>i

" setup pathogen to manage your plugins
call pathogen#infect()

