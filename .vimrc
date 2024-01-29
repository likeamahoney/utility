let g:ycm_use_clangd = 1
"let g:ycm_clangd_binary_path = '/home/yan/.vim/bundle/youcompleteme/third_party/ycmd/third_party/clangd/output/bin/clangd'
let g:ycm_clangd_args = ['-log=verbose']
let g:ycm_max_diagnostics_to_display = 0
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'

let g:ycm_enable_diagnostic_signs = 0 " hide vertical leftside panel

let g:verilog_syntax_fold_lst = "all"
"set foldmethod=syntax

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/youcompleteme'
Plugin 'vhda/verilog_systemverilog.vim'
call vundle#end()            " required
filetype plugin indent on    " required

map <F9> :YcmCompleter FixIt<CR>
let mapleader=" "
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>

autocmd FileType c,cpp setlocal equalprg=clang-format

"for `tmux` from https://github.com/tmux/tmux/issues/699#issuecomment-269572025
set background=dark
set t_Co=256
