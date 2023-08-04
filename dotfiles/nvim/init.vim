"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"let &packpath=&runtimepath
"source ~/.vimrc
" cSpell:words goyo floaterm
call plug#begin()
source $HOME/.config/nvim/nvim-config/plugins.vim
call plug#end()

source $HOME/.config/nvim/nvim-config/general.vim

source $HOME/.config/nvim/nvim-config/init.lua
source $HOME/.config/nvim/nvim-config/lualine.lua
source $HOME/.config/nvim/nvim-config/nvim-treesitter.lua

source $HOME/.config/nvim/nvim-config/abbreviations.vim
source $HOME/.config/nvim/nvim-config/coc.vim
source $HOME/.config/nvim/nvim-config/goyo.vim
source $HOME/.config/nvim/nvim-config/vim-test.vim

source $HOME/.config/nvim/nvim-config/leader.vim
source $HOME/.config/nvim/nvim-config/theme.vim

" Miscellaneous
let g:python3_host_prog='/opt/homebrew/bin/python3'

command! LF FloatermNew lf
let g:airline#extensions#tabline#enabled=1
let g:vim_markdown_folding_disabled = 1

let g:rooter_patterns = ['.git']

" lf Config
let g:lf_replace_netrw = 1 " Open lf when vim opens a directory
let g:lf_width = 0.9
let g:lf_height = 0.7

" Write all buffers before navigating from Vim to tmux pane
let g:tmux_navigator_save_on_switch = 2

function! SortLines() range
    execute a:firstline . "," . a:lastline . 's/^\(.*\)$/\=strdisplaywidth( submatch(0) ) . " " . submatch(0)/'
    execute a:firstline . "," . a:lastline . 'sort n'
    execute a:firstline . "," . a:lastline . 's/^\d\+\s//'
endfunction

" Disable Perl Provider 
let g:loaded_perl_provider = 0

" NerdTree
" open NERDTree automatically
"autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree
"let g:NERDTreeGitStatusWithFlags = 1
"let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:NERDTreeGitStatusNodeColorization = 1
" Close NERDTree automatically on mac when opening a file
autocmd StdinReadPre * let s:std_in=1 
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

au filetype vimwiki silent! iunmap <buffer> <Tab>

