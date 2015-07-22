"Basic settings {{{
    set expandtab
    set shiftwidth=4
    set tabstop=4
    set smartindent
    set smarttab

    set ignorecase
    set smartcase
    set hlsearch
    set incsearch

    set wildmode=longest:full
    set wildmenu
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor,*/node_modules

    set foldmethod=marker

    filetype off
    call pathogen#runtime_append_all_bundles()
    call pathogen#helptags()

    syntax on
    filetype on
    filetype plugin indent on

    colorscheme molokai256

    let g:pyflakes_use_quickfix=0
"}}}

"Key mappings {{{
    nnoremap <Right> :tabnext<CR>
    nnoremap <Left> :tabprevious<CR>
    inoremap <Right> <Esc>:tabnext<CR>a
    inoremap <Left> <Esc>:tabprevious<CR>a

    let mapleader=","

    imap jj <Esc>
"}}}

"Statusline {{{
    hi User1 ctermbg=black   ctermfg=white   guibg=darkgrey  guifg=white
    hi User2 ctermbg=black   ctermfg=grey    guibg=darkgrey  guifg=grey

    set laststatus=2
    set statusline+=%1*
    set statusline+=%F\ 
    set statusline+=%2*
    set statusline+=%m%r
    set statusline+=%y
    set statusline+=%{fugitive#statusline()}
    set statusline+=%=
    set statusline+=%10((%l,%c)%)\ 
    set statusline+=%P
"}}}

"Misc {{{
    set list
    set listchars=nbsp:…,tab:▸\ ,trail:·

    "Disable background color erase
    set t_ut=
"}}}
