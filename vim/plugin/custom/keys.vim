function NIMap(keys, commands)
	execute 'nmap' a:keys a:commands
	execute 'imap' a:keys '<C-o>' . a:commands
endfunction

function NXMap(keys, commands)
	execute 'nmap' a:keys a:commands
	execute 'xmap' a:keys a:commands
endfunction

nmap <C-h> :0r !headergen %<CR>0kwv$h

let mapleader = ','

" Terminal sexyness
call NIMap('<C-j>', ':terminal<CR>')
inoremap <C-l> <Esc>
nnoremap <C-l> i
tnoremap <C-l> <C-w>N
tnoremap <C-j> <C-d>

nnoremap q :quit<CR>
nnoremap s :split<CR>
nnoremap S :vsplit<CR>
call NIMap('<C-k>', ':split<CR>')
call NIMap('<F2>', ':nohlsearch<CR>')
call NIMap('<F7>', '<Plug>(coc-fix-current)')
call NIMap('<F8>', ':CocList diagnostics<CR>')
call NIMap('<F9>', ':NERDTreeToggle<CR>')
call NIMap('<F10>', ':FZF<CR>')
call NIMap('<F11>', ':Goyo<CR>')
call NIMap('<F12>', '<Plug>(coc-definition)<CR>')

call NXMap('ga', '<Plug>(EasyAlign)')
call NXMap('<C-t>', 'gt<CR>')
call NXMap('<C-T>', 'gT<CR>')
