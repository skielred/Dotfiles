function NIMap(keys, commands)
	execute 'nmap' a:keys a:commands
	execute 'imap' a:keys '<C-o>' . a:commands
endfunction

function NXMap(keys, commands)
	execute 'nmap' a:keys a:commands
	execute 'xmap' a:keys a:commands
endfunction

nmap <C-h> :0r !headergen %<CR>0kwv$h

call NIMap('<F9>', ':NERDTreeToggle<CR>')
call NIMap('<F11>', ':Goyo<CR>')

call NXMap('ga', '<Plug>(EasyAlign)')
call NXMap('<C-t>', 'gt<CR>')
call NXMap('<C-T>', 'gT<CR>')
