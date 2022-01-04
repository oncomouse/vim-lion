" lion.vim - A Vim plugin for text alignment operators
" Maintainer:   Tom McDonald <http://github.com/tommcdo>
" Version:      1.0

nnoremap <silent> <Plug>LionRepeat .
nnoremap <silent> <expr> <Plug>LionRight vim_lion#command("vim_lion#alignRight")
vnoremap <silent> <expr> <Plug>VLionRight vim_lion#command("vim_lion#alignRight", 1)
nnoremap <silent> <expr> <Plug>LionLeft vim_lion#command("vim_lion#alignLeft")
vnoremap <silent> <expr> <Plug>VLionLeft vim_lion#command("vim_lion#alignLeft", 1)

if get(g:, 'lion_create_maps', 1)
	call vim_lion#assign_map(get(g:, 'lion_map_right', 'gl'), 'Right')
	call vim_lion#assign_map(get(g:, 'lion_map_left',  'gL'), 'Left')
endif
