return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
            vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
            vim.keymap.set('n', '<C-p>', builtin.git_files, {}) -- archivos de git
            -- buscador con grep
            vim.keymap.set('n', '<leader>ps', function()
                builtin.grep_string({ search = vim.fn.input("Grep > ") });
            end)

            require('telescope').setup {
                defaults = {
                    initial_mode = "insert",

                    preview = {
                        hide_on_startup = false, -- empezar sin previsualizar
                    },

                    mappings = {
                        n = {
                            ["p"] = require 'telescope.actions.layout'.toggle_preview,
                        },
                    },
                }
            }
        end
    }
}
