return {
    {
        "stevearc/conform.nvim",
        -- event = 'BufWritePre', -- uncomment for format on save
        opts = require "configs.conform",
    },
    {
        "nvim-tree/nvim-tree.lua",
        config = function()
            require "configs.nvim-tree"
        end

    },

    -- These are some examples, uncomment them if you want to see them work!
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
    },
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require "configs.nvim-treesitter"
        end
        -- opts = {
        --     ensure_installed = {
        --         "vim", "lua", "vimdoc", "html", "css", "python","rust"
        --     },
        --
        --
        -- config = function()
        --
        --
        -- end

        -- },
    },
    {
        "nvim-telescope/telescope.nvim",
        config = function()
            require "nvchad.configs.telescope"
            require('telescope').setup({
                defaults = {
                    file_ignore_patters = {},
                    hidden = true,
                }
            })
        end
    },
    {
        "smoka7/hop.nvim",
        config = function()
            require "configs.hop"
        end
    },
    {
        "ojroques/nvim-bufdel",
    },
	{
		'akinsho/toggleterm.nvim',
		version = "*",
		config = function()
            require "configs.toggleterm"
		end
	},
    {
        "kylechui/nvim-surround",
        version = "*",
        config = function()
        end
    },
	{
		"CRAG666/code_runner.nvim",
		config = function()
			require('code_runner').setup {
				mode = 'toggleterm'
			}
		end
	},
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			--your configuration comes here
			--or leave it empty to use the default settings
			--refer to the configuration section below
		},
        keys = {
            {
              "<C-t>",
              "<cmd>Trouble diagnostics toggle<cr>",
              desc = "Diagnostics (Trouble)",
            },
        }
	},
    {
        'mrcjkb/rustaceanvim',
        version = '^5', -- Recommended
        lazy = false, -- This plugin is already lazy
    },
    {
        'stevearc/aerial.nvim',
        opts = {},
        -- Optional dependencies
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            require "configs.aerial"
        end
    },
}
