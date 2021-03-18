set nocompatible

set rtp +=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-surround'
Plugin 'posva/vim-vue'
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'pangloss/vim-javascript'
Plugin 'prettier/vim-prettier'
Plugin 'dense-analysis/ale'
Plugin 'eslint/eslint'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-obsession'

call vundle#end()

set backspace=indent,eol,start

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent

set number
set relativenumber
set ruler

" dynamic relative line numbers
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

set showcmd
set wildmenu
set cursorline

set mouse=a

set laststatus=2
set statusline=%y%w%m\ %f\  "file info
set statusline+=%= "go to right side
set statusline+=%l/%L "line count
set statusline+=\ %c "ruler
set statusline+=\ %{FugitiveStatusline()}

syntax on
set background=dark
colorscheme solarized
"hi Normal ctermbg=NONE

let g:netrw_banner=0
"let g:netrw_browse_split=2
"let g:netrw_winsize=25

filetype plugin indent on

autocmd BufNewFile,BufRead *.twig set syntax=html
autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx
"autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()

" enable fzf
set rtp+=/usr/local/opt/fzf

" extended language server support (YouCompleteMe)
let g:ycm_lsp_dir = '/Users/criebs/workspace/sandbox/lsp-examples'
let g:ycm_language_server = []
let g:ycm_language_server += [
  \   { 'name': 'docker',
  \     'filetypes': [ 'dockerfile' ],
  \     'cmdline': [ expand( g:ycm_lsp_dir . '/docker/node_modules/.bin/docker-langserver' ), '--stdio' ]
  \   },
  \ ]
let g:ycm_language_server += [
  \   { 'name': 'vue',
  \     'filetypes': [ 'vue' ],
  \     'cmdline': [ expand( g:ycm_lsp_dir . '/vue/node_modules/.bin/vls' ) ]
  \   },
  \ ]
let g:ycm_language_server += [
  \   {
  \     'name': 'php',
  \     'cmdline': [ 'php', '-d', 'memory_limt=1024M', g:ycm_lsp_dir . '/php/serenata/bin/console', '--uri=tcp://127.0.0.1:11111' ],
  \     'filetypes': [ 'php' ],
  \     'port': 11111
  \   },
  \ ]
let g:ycm_language_server += [
  \   {
  \     'name': 'bash',
  \     'cmdline': [ 'node', expand( g:ycm_lsp_dir . '/bash/node_modules/.bin/bash-language-server' ), 'start' ],
  \     'filetypes': [ 'sh', 'bash' ],
  \   },
  \ ]
let g:ycm_language_server += [
  \   {
  \     'name': 'json',
  \     'cmdline': [ 'node', expand( g:ycm_lsp_dir . '/json/node_modules/.bin/vscode-json-languageserver' ), '--stdio' ],
  \     'filetypes': [ 'json' ],
  \     'capabilities': { 'textDocument': { 'completion': { 'completionItem': { 'snippetSupport': v:true } } } },
  \   },
  \ ]
let g:ycm_language_server += [
  \   {
  \     'name': 'yaml',
  \     'cmdline': [ 'node', expand( g:ycm_lsp_dir . '/yaml/node_modules/.bin/yaml-language-server' ), '--stdio' ],
  \     'filetypes': [ 'yaml' ],
  \     'capabilities': { 'textDocument': { 'completion': { 'completionItem': { 'snippetSupport': v:true } } } },
  \   },
  \ ]

