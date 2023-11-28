set nocompatible        " use vim defaults
set scrolloff=3         " keep 3 lines when scrolling
set ai                  " set auto-indenting on for programming

set showcmd             " display incomplete commands
set nobackup            " do not keep a backup file
set number              " show line numbers
set relativenumber
set ruler               " show the current row and column

set hlsearch            " highlight searches
set incsearch           " do incremental searching
set showmatch           " jump to matches when entering regexp
set ignorecase          " ignore case when searching
set smartcase           " no ignorecase if Uppercase char present
nnoremap <leader><space> :nohlsearch<CR> " turn off search highlight

set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell
let mapleader=","       " easier than to type \
set backspace=indent,eol,start  " make that backspace key work the way it should
"set runtimepath=$VIMRUNTIME     " turn off user scripts, https://github.com/igrigorik/vimgolf/issues/129

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
"nnoremap <space> za     " space open/closes folds
syntax on               " turn syntax highlighting on by default
filetype on             " detect type of file
filetype indent on      " load indent file for specific file type
set expandtab           " no real tabs
inoremap jk <Esc>
set clipboard=unnamed 
" Plug 'karoliskoncevicius/vim-sendtowindow'
" movement/visual + Space j/k/h/l

set rtp+=/opt/homebrew/opt/fzf

set termguicolors       " Gives Vim access to a broader range of colours
set path+=**            " search down into subfolders
set wildmenu            " display all matching files
set wildmode=full

" edit Markdown files
autocmd BufNewFile,BufRead *.md set filetype=markdown   " Treat all .md files as markdown
autocmd FileType markdown set cursorline                " Highlight the line the cursor is on
autocmd FileType markdown set conceallevel=2            " Hide and format markdown elements like **bold**
autocmd FileType markdown setlocal spell spelllang=en_gb    " Set spell check to British English

" Python
autocmd BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd FileType python set foldmethod=indent           " collapse the methods


nnoremap <C-t><C-s> m'A<C-R>=strftime('%Y%m%dT%H%M%S')<CR> " Insert timestamp at the end of the line
command! MakeTags !ctags -R .   " generate the tags file, ^] goto tag under the cursor, ^t jump back

" Tweaks for file browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
let g:netrw_winsize=25

" nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a " language based templates

" use buffers instead tabs
set hidden                      " move forward without saving the file
" open a new empty buffer
nmap <leader>T :enew<cr>
" move to the next buffer
nmap <leader>l :bnext<cr>
" move to the previous buffer
nmap <leader>h :bprevious<cr>
" close the current buffer, move to the previous one
nmap <leader>bq :bp <bar> bd #<cr>
" show all open buffers
nmap <leader>bl :ls<cr>

set splitbelow
set splitright
set cursorline
set rtp+=~/.fzf
