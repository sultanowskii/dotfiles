local config = {
	polish = function()
		vim.cmd('set noexpandtab')
		vim.cmd('set tabstop=8')
		vim.cmd('set shiftwidth=8')
	end,
}

return config
