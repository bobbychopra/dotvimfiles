call pathogen#infect() 

set number                      " Display Line Numbers
set listchars=tab:▸\ ,eol:¬     " Tab [CTRL-V u25b8], EOL [ALT-L]
" By default use spaces instead of tabs, 4 spaces not default 8
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab

" Backspace-l allows for toggle show tab&eol
nmap <leader>l :set list!<CR>
nmap <leader>f :NERDTree<CR>


if has("autocmd")               " Only if autocmd is available
    filetype on                 " Turn file detection on
    filetype plugin on
    
    autocmd FileType python setlocal ts=3 sts=3 sw=3 expandtab
    autocmd FileType html   setlocal ts=2 sts=2 sw=2 noexpandtab

    " Treat rss,atom files as xml
    autocmd BufNewFile,BufRead *.rss,*.atom setfiletype xml
    " Update vi when saved
    autocmd BufWritePost .vimrc source $MYVIMRC
endif

colorscheme darkblue
