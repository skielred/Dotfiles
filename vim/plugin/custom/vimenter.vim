" This function will be called on VimEnter event, which occurs after all
" initial configuration files (vimrc, ...) are loaded

autocmd StdinReadPre * let g:std_in=1

autocmd VimEnter * call VimEnterCommands()
function VimEnterCommands()

	if exists('g:loaded_nerd_tree')
		if argc() == 1 && isdirectory(argv()[0]) && !exists('g:std_in')
			" Open an empty buffer
			exe 'enew'
			exe 'NERDTreeToggle'
		endif
	endif

	if exists('g:loaded_lightline')
		" Always display statusline
		set laststatus=2
		" Don't display mode under statusline (lightline already
		" displays mode)
		set noshowmode
	endif

endfunction