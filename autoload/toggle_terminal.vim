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

let g:toggle_terminal#command = get(g:,'toggle_terminal#command','shell')

function! toggle_terminal#toggle_terminal()
    let bufferNum = bufnr('ToggleTerminal')
    if bufferNum == -1 || bufloaded(bufferNum) != 1
        execute 'rightbelow term ++close ++kill=term '.g:toggle_terminal#command
        file ToggleTerminal
    else
        let windowNum = bufwinnr(bufferNum)
        if windowNum == -1
            execute 'rightbelow sbuffer '.bufferNum
        else
            execute windowNum.'wincmd w'
            hide 
        endif
    endif
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
