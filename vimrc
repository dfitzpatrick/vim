filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
call pathogen#infect() 

filetype on
syntax on
filetype plugin indent on
set expandtab           " enter spaces when tab is pressed
set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line

" make backspaces more powerfull
set backspace=indent,eol,start
set number
set ruler                           " show line and column number
syntax on                       " syntax highlighting
set showcmd                     " show (partial) command in status line
colorscheme blackboard

" Custom stuff
let mapleader = ","
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
"splits
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"Minibuf explorer extras
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 

set t_Co=256
let g:pyflakes_use_quickfix=0
let g:pep8_map='<leader>8'

map <Leader>] <Plug>MakeGreen
map <Leader>[ <Plug>TaskList
map <Leader>n :NERDTreeToggle<CR>
map <Leader>j :RopeGotoDefinition<CR>
map <Leader>r :RopeRename<CR>
nmap <Leader>a <Esc>:Ack!


set foldmethod=indent
set foldlevel=99

au FileType python set omnifunc=pythoncomplete#Complete
au FileType css set omnifunc=csscomplete#CompleteCSS
au FileType php set omnifunc=phpcomplete#CompletePHP

let g:SuperTabDefaultCompletionType = "context"


py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF


