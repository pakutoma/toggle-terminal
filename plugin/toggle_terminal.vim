" =============================================================================
" File: toggle_terminal.vim
" Author: pakutoma
" License: MIT License
" Last Change: 2018/05/24
" =============================================================================

if exists('g:loaded_toggle_terminal') || v:version < 800 || v:version == 800 && !has('patch-8.0.1593')
  finish
endif
let g:loaded_toggle_terminal = 1

let s:save_cpo = &cpo
set cpo&vim

command! -nargs=0 ToggleTerminal call toggle_terminal#ToggleTerminal()

let &cpo = s:save_cpo
unlet s:save_cpo
