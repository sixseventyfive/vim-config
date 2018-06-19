call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
"Plug 'python-mode/python-mode', { 'branch': 'develop' }
"Plug 'bling/vim-bufferline'
call plug#end()
let g:pymode_python = 'python3'
let g:airline#extensions#tabline#enabled = 1
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set wrap!
set number
set autoindent
set ruler
filetype indent on
noremap <F10> :w<bar>:!sqlcmd -S HLT439SQL005 -E -d MHDC_UAT -o H:\temp.csv -s , -i %:p<CR><bar><CR>
noremap <F5> :!sqlcmd -S HLT439SQL005 -E -d MHDC_UAT -o H:\temp.csv -s "	"
noremap <leader>p "*
noremap <F7> <Esc>:w<CR>:!python %<CR>
noremap <F6> <Esc>:w<CR>:%!python C:\Users\cstuar01\vim80\sql_formatter.py<CR>:%s/GO/\rGO\r/g<CR>
noremap <F8> <Esc>:w<CR>:%!yapf<CR>
nnoremap K i<CR><Esc>
set backspace=indent,eol,start
set laststatus=2
set noshowmode
