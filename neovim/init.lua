local config = {
	polish = function()
		-- c
		vim.cmd('autocmd Filetype c setlocal noexpandtab')
		vim.cmd('autocmd Filetype c setlocal tabstop=8')
		vim.cmd('autocmd Filetype c setlocal shiftwidth=8')

		-- cpp
		vim.cmd('autocmd Filetype cpp setlocal noexpandtab')
		vim.cmd('autocmd Filetype cpp setlocal tabstop=8')
		vim.cmd('autocmd Filetype cpp setlocal shiftwidth=8')

		-- python
		vim.cmd('autocmd Filetype python setlocal expandtab')
		vim.cmd('autocmd Filetype python setlocal tabstop=4')
		vim.cmd('autocmd Filetype python setlocal textwidth=120')
		vim.cmd('autocmd Filetype python setlocal autoindent')
		vim.cmd('autocmd Filetype python setlocal shiftwidth=4')
	end,
}

return config
