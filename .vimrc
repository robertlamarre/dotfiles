" dougblack.io/words/a-good-vimrc.html
" COLORS
colorscheme lazarus     " cool colorscheme
syntax enable 		    " enable syntax processing
" SPACES AND TABS
set tabstop=4		    " number of visual spaces per TAB
set softtabstop=4	    " number of spaces in tab when editing
set expandtab		    " tabs are spaces
" UI CONFIG
set number		        " show line numbers
set cursorline		    " highlight current line
filetype indent on	    " load filetype=specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
" SEARCHING
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" FOLDING
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
nnoremap <space> za   " space open/closes folds
set foldmethod=indent   " fold based on indent level

execute pathogen#infect()

" syntastic configs
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set colorcolumn=91

" Remove whitespace on save
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

set runtimepath^=~/.vim/bundle/ctrlp.vim
