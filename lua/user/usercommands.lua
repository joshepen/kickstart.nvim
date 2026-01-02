-- [[ Usercommands ]]

vim.api.nvim_create_user_command('T', function(opts)
  vim.cmd('terminal ' .. opts.args)
end, {
  nargs = '*',
  complete = 'shellcmd',
})

-- Commands to save a terminal command and run it (for running / compiling
vim.api.nvim_create_user_command('TSC', function(opts)
  vim.g.term_compile_cmd = opts.args
  print('Terminal compile command set to: ' .. vim.g.term_compile_cmd)
end, { nargs = 1, desc = 'Save compile command' })

vim.api.nvim_create_user_command('TC', function()
  if not vim.g.term_compile_cmd then
    print 'No compile command set'
  else
    vim.cmd('terminal ' .. vim.g.term_compile_cmd)
  end
end, {})

vim.api.nvim_create_user_command('TSR', function(opts)
  vim.g.term_run_cmd = opts.args
  print('Terminal run command set to: ' .. vim.g.term_run_cmd)
end, { nargs = 1, desc = 'Save run command' })

vim.api.nvim_create_user_command('TR', function()
  if not vim.g.term_run_cmd then
    print 'No run command set'
  else
    vim.cmd('terminal ' .. vim.g.term_run_cmd)
  end
end, {})
