return {
    {
        'nvim-lualine/lualine.nvim',

        config = function()
            local lualine = require"lualine"

            lualine.setup {
                options = {
                    icons_enabled = true,
                    theme = 'tokyonight',
                    component_separators = { left = '', right = '' },
                    section_separators = { left = '', right = '' },
                    disabled_filetypes = {
                        statusline = {},
                        winbar = {},
                    },
                    ignore_focus = {},
                    always_divide_middle = true,
                    globalstatus = false,
                    refresh = {
                        statusline = 200,
                        tabline = 1000,
                        winbar = 1000,
                    }
                },

                sections = {
                    lualine_a = {},
                    lualine_b = {
                        'diff', {
                            'diagnostics',
                            symbols = {
                                error = 'E: ',
                                warn = 'W: ',
                                info = 'I: ',
                                hint = 'H: '
                            }
                        }
                    },
                    lualine_c = {
                        {
                            'filename',
                            file_status = true,
                            newfile_status = false,
                            path = 1,
                            shorting_target = 40,
                            symbols = {
                                readonly = '[RO]'
                            }
                        }
                    },
                    lualine_x = { 'branch', 'encoding' },
                    lualine_y = { 'progress', 'location' },
                    lualine_z = {}
                },

                inactive_sections = {
                    lualine_a = {},
                    lualine_b = {
                        'diff', {
                            'diagnostics',
                            symbols = {
                                error = 'E: ',
                                warn = 'W: ',
                                info = 'I: ',
                                hint = 'H: '
                            }
                        }
                    },
                    lualine_c = {
                        {
                            'filename',
                            file_status = true,
                            newfile_status = false,
                            path = 1,
                            shorting_target = 40,
                            symbols = {
                                readonly = '[RO]'
                            }
                        }
                    },
                    lualine_x = { 'branch', 'location' },
                    lualine_y = {},
                    lualine_z = {}
                },
                tabline = {},
                winbar = {},
                inactive_winbar = {},
                extensions = {}
            }
        end
    }
}
