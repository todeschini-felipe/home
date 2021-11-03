""""""""""""""""""""""""""""""
" => Spice section
"""""""""""""""""""""""""""""""
autocmd BufNewFile,BufRead *.ssp.gz set syntax=spice
autocmd BufNewFile,BufRead *.ssp set syntax=spice
au BufRead,BufNewFile *.spice_in set filetype=nanspice
au BufRead,BufNewFile *.spice_in.gz set filetype=nanspice
autocmd BufNewFile,BufRead *.scs.gz set syntax=spice
autocmd BufNewFile,BufRead *.scs set syntax=spice

""""""""""""""""""""""""""""""
" => Perl section
"""""""""""""""""""""""""""""""
autocmd BufNewFile,BufRead *.ngc set syntax=perl
autocmd BufNewFile,BufRead *.sens set syntax=perl

""""""""""""""""""""""""""""""
" => C++ section
"""""""""""""""""""""""""""""""
autocmd BufNewFile,BufRead *.ixx set syntax=cpp
autocmd BufNewFile,BufRead *.cxx set syntax=cpp
autocmd BufNewFile,BufRead *.hxx set syntax=cpp

