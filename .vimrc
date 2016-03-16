set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

" Rogers Custom Config Start
    syntax on "Ativa o highlighting
    set number "Ativa a exibi��o das linhas
    set autoindent
    set cindent
    set encoding=utf-8
    ""{Configura tabs para serem espacos
        set smartindent
        set tabstop=4
        set shiftwidth=4
        set expandtab
    ""}
    ""Desabilita o backup automatico do Vim{
        set nobackup
        set nowritebackup
    ""}
    ""Desabilita a criacao de arquivo de swap{
        ""set noswapfile
    ""}
    if &diff
        colorscheme desert
    else
        colorscheme molokai
    endif
    ""Mudar a cor da coluna 80{
        ""set colorcolumn=80
        ""highlight ColorColumn ctermbg=DarkGray guibg=DarkGray
    ""}
    ""Mudar a font no gvim{
        if has('gui_running')
            colorscheme monokai
            set guioptions -=m
            set guioptions -=T
        endif
    ""}
    ""Rebind Ctrl+V para Ctrl+Q{
        noremap <C-L> <C-V>
    ""}
    ""Setting Arduino Files to highlight like C{
        autocmd! BufNewFile,BufRead *.ino setlocal ft=arduino
        autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino
    ""}
    "" Bind F2 key to save and execute the current file{
        map <F2> <Esc>:w<CR>:! clear &&./%\|less -N<CR>
    ""}
    
    "" Bind F2 key to save and execute the current file{
        nnoremap <F3> <Esc>:w<CR>:! clear &&./%<CR>
        inoremap <F3> <Esc>:w<CR>:! clear &&./%<CR>
    ""}

    "" When using !, makes vim load users bash files{
    if filereadable($HOME."/.bashrc") && &diff == 'nodiff'
        ""set shell=/bin/bash\ --login
        set shellcmdflag=-ic
		""echo "SpecificFile exists"
	endif
    ""}
    if &term =~ '^screen'
        " tmux will send xterm-style keys when its xterm-keys option is on
        execute "set <xUp>=\e[1;*A"
        execute "set <xDown>=\e[1;*B"
        execute "set <xRight>=\e[1;*C"
        execute "set <xLeft>=\e[1;*D"
    endif

    ""{Underline the line and highlight the column under cursor
        set cursorline
        set cursorcolumn
    ""}

    ""{ settings for code folding
        set foldmethod=indent   "fold based on indent
        set foldnestmax=10      "deepest fold is 10 levels
        set nofoldenable        "dont fold by default
        set foldlevel=1         "this is just what i use
    ""}

    set showtabline=2 ""always show tabs
    
    ""{ makes VIM lists possible file paths whem you are specifying a file path on command mode
        set wildmode=longest,list,full
        set wildmenu
    ""}
    
    set noundofile ""Disable undo file (.un~) creation.
    ""{delete without put on default register
        nnoremap <leader>d "_d
        vnoremap <leader>d "_d
    ""{

" Rogers Custom Config End

