" ===== PATHOGEN SETUP =====
execute pathogen#infect()
syntax on
filetype plugin indent on

" ===== GENERAL SETTINGS =====
let mapleader = ","
nnoremap <leader>f :NERDTree<Cr>
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set colorcolumn=80
highlight ColorColumn ctermbg=2
set number
set hlsearch
set exrc
nnoremap <leader><space> :noh<Cr>
inoremap jk <esc>
colorscheme vice
highlight ColorColumn guibg=Black
set backupdir=~/.vim/.backup//
set dir=~/.vim/.swp//
autocmd BufWritePre *.hs %s/\s\+$//e

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"⭤":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ }
      \ }

if &term =~ "xterm\\|rxvt"
  " use an orange cursor in insert mode
  let &t_SI = "\<Esc>]12;grey\x7"
  " use a red cursor otherwise
  let &t_EI = "\<Esc>]12;purple\x7"
  silent !echo -ne "\033]12;purple\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal and rxvt up to version 9.21
endif
