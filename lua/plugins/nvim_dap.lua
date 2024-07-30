return {
  "mfussenegger/nvim-dap",
  dependencies = {
    { "theHamsta/nvim-dap-virtual-text", config = true },
    { "rcarriga/nvim-dap-ui", dependencies = { "nvim-neotest/nvim-nio" }, config = true },
  },
  config = function()
    require("dap").adapters['pwa-node'] = {
      type = "server",
      host = "localhost",
      port = "${port}",
      executable = {
        command = "node",
        args = {"/home/steve/.config/nvim/bin/js-debug/src/dapDebugServer.js", "${port}"},
      }
    }

    local dap = require 'dap'
    local js_based_languages = { 'typescript', 'javascript' }
    for _, language in ipairs(js_based_languages) do
      dap.configurations[language] = {
        {
          name = 'Launch',
          type = 'pwa-node',
          request = 'launch',
          program = "${file}",
          cwd = "${workspaceFolder}"
        },
        {
          name = 'Attach',
          type = 'pwa-node',
          request = 'attach',
          port = 9229,
          skipFiles = { '<node_internals>/**', 'node_modules/**' },
          cwd = '${workspaceFolder}',
        }
      }
    end

    vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
    vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
    vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
    vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)
    vim.keymap.set('n', '<Leader>b', function() require('dap').toggle_breakpoint() end)
    vim.keymap.set('n', '<Leader>B', function() require('dap').set_breakpoint() end)
    vim.keymap.set('n', '<Leader>lp', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
    vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end)
    vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end)
    vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
      require('dap.ui.widgets').hover()
    end)
    vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
      require('dap.ui.widgets').preview()
    end)
    vim.keymap.set('n', '<Leader>df', function()
      local widgets = require('dap.ui.widgets')
      widgets.centered_float(widgets.frames)
    end)
    vim.keymap.set('n', '<Leader>ds', function()
      local widgets = require('dap.ui.widgets')
      widgets.centered_float(widgets.scopes)
    end)
  end
}

