local db = require("dashboard")
db.setup({
	theme = 'doom',
	config = {
		header = {
			"                                                    ",
			"                                                    ",
			"                                                    ",
			"                                                    ",
			"                                                    ",
			"                                                    ",
			"                                                    ",
			"                                                    ",
			"                                                    ",
			"    ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄    ",
			"    █             ▄                            █    ",
			"    █  ▄▄▄▄▄▄▄▄▄▄ ▄   █    █ █    █ ▄▄▄▄▄▄█    █    ",
			"    █  █     █    █   █    █ █    █ █     █    █    ",
			"    █  █     █    █   █▄▄▄▄█ █▄▄▄▄█ █     █    █    ",
			"    █  █▄▄▄▄▄█    █▄    █    █      █▄▄▄▄▄█▄▄  █    ",
			"    █  ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄  █    ",
			"    █   ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄ ▄  ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄   █    ",
			"    █    ▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ▄  ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄▄    █    ",
			"    █    █     █ █      █  █     █ █           █    ",
			"    █    █▄▄▄▄▄█ █▄▄▄   █  █     █ █           █    ",
			"    █    █     █ █      █  █     █ █           █    ",
			"    █    █▄▄▄▄▄█ █▄▄▄▄▄ █▄ █▄▄▄▄▄█ █▄▄▄▄▄▄▄    █    ",
			"    █                                   ▄█     █    ",
			"    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█    ",
			"                                                    ",
			"                                                    ",
		}, --your header
		center = {  	
			{
				icon = '🔍',
				icon_hl = 'Title',
				desc = 'Find File',
				desc_hl = 'String',
				key = 'a',
				keymap = ', f f',
				key_hl = 'Number',
				action = 'Telescope find_files'
			},
			{
				icon = 'Ψ ',
				desc = 'Toggle Harpoon',
				key = 's',
				keymap = ', h',
				action = 'lua require("harpoon.ui").toggle_quick_menu()'
			},
			{
				icon = '⚙️ ',
				icon_hl = 'Title',
				desc =  'Config File',
				desc_hl = 'String',
				key = 'd',
				keymap = ', e',
				key_hl = 'Number',
				action = 'edit $MYVIMRC'
			},
			{
				icon = '❎',
				desc = 'Exit',
				key = 'q',
				keymap = ', q',
				action = 'q!'
			},
			{
				icon = '📦',
				icon_hl = 'Title',
				desc = 'Packer',
				desc_hl = 'String',
				key = 'p',
				keymap = ', p',
				key_hl = 'Number',
				action = 'edit ~/.config/nvim/lua/plugins.lua'
			}
		},
		footer = {"Maaman Does Things to a Perfection"}  --your footer
	}
})
