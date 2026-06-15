vim.cmd('syntax enable')
vim.cmd('filetype plugin indent on')
vim.cmd("colorscheme kanagawa");

-- PlatformIO commands
vim.api.nvim_create_user_command('PIOBuild', '!pio run', { desc = 'PlatformIO: Build' })
vim.api.nvim_create_user_command('PIOUpload', '!pio run --target upload', { desc = 'PlatformIO: Upload' })
vim.api.nvim_create_user_command('PIOMonitor', '!pio device monitor', { desc = 'PlatformIO: Serial Monitor' })
vim.api.nvim_create_user_command('PIOClean', '!pio run --target clean', { desc = 'PlatformIO: Clean' })
