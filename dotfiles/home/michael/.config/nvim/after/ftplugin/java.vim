""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" java.vim
" ========
"
" Author:                Michael De Pasquale
" Creation Date:         2018-02-19
"
" Description
" -----------
" Configuration for java syntax buffers
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Highlight lines exceeding textwidth{{{
call rccommon#HighlightTextWidth()
" }}}
" Update Tagbar{{{
call rccommon#UpdateTagbarOptions()
"}}}
" Load a dictionary for this filetype, if one exists{{{
call rccommon#LoadFiletypeDictionary()
"}}}
" Delete trailing whitespace and replace tab characters{{{
call rccommon#DeleteTrailingWS()
retab
"}}}
" Autocommands{{{
augroup JavaFiletypeConfig
    autocmd!
    autocmd BufWrite *.java call rccommon#DeleteTrailingWS()
    autocmd VimResized *.java call rccommon#UpdateTagbarOptions()
augroup end
"}}}
" vim: set ts=4 sw=4 tw=79 fdm=marker et :
