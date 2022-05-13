local config = {
	polish = function()
		-- sets tab size to 8
		vim.cmd('set tabstop=8')
		-- places tab of size 8 when pressing Tab button
		vim.cmd('set shiftwidth=8')
	end,
}

return config