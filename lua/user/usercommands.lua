-- [[ Basic Autocommands ]]

vim.api.nvim_create_user_command('T', function(opts)
  vim.cmd('terminal ' .. opts.args)
end, {
  nargs = '*',
  complete = 'shellcmd',
})
