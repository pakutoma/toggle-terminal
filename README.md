# toggle-terminal
Toggle :terminal for Vim8 or later

## Usage
```
" map <C-@> to toggle
tnoremap <silent> <C-@> <C-w>:ToggleTerminal<CR>
nnoremap <silent> <C-@> :ToggleTerminal<CR>

" set your favorite shell
let g:toggle_terminal#command = 'powershell'
```
