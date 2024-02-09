--Your project's configuration should be specified in a file (default filename is .projectlaunch.json) at the root of your project, it will specify any commands that can be run. If you're familiar with Typescript this is an interface that would describe it.
--example
--{
    --"commands": [
        --{ "name": "Start", "cmd": "npm run dev", "groups": ["dev"] },
        --{ "name": "Build frontend", "cmd": "npm run build-frontend:dev", "groups": ["dev"] },
        --{ "name": "Build server", "cmd": "npm run build-server:dev", "groups": ["dev"] },
        --{ "name": "Lint frontend", "cmd": "npm run lint-frontend:dev", "groups": ["lint", "test"] },
        --{ "name": "Lint server", "cmd": "npm run lint-server:dev", "groups": ["lint", "test"] },
        --{ "name": "Command with runtime var", "cmd": "echo $1" },
        --{ "name": "Test", "cmd": "npm test", "groups": ["test"] }
    --]
--}
--
return {
	"sheodox/projectlaunch.nvim",
	config = function()
		local pl = require("projectlaunch")

		pl.setup({
			split_default_width = 60,

			split_focus_on_open = false,

			config_path = ".projectlaunch.json",

			auto_reload_config = true,
		})

		vim.keymap.set("n", "<leader>ll", pl.toggle_main_menu, { noremap = true, expr = false, buffer = false })
		vim.keymap.set("n", "<leader>lf", pl.toggle_float, { noremap = true, expr = false, buffer = false })
		vim.keymap.set("n", "<leader>ls", pl.toggle_split, { noremap = true, expr = false, buffer = false })
		vim.keymap.set("n", "<leader>ln", pl.show_next, { noremap = true, expr = false, buffer = false })
		vim.keymap.set("n", "<leader>lm", pl.show_prev, { noremap = true, expr = false, buffer = false })
		vim.keymap.set("n", "<leader>lr", pl.restart_command_in_split, { noremap = true, expr = false, buffer = false })

		pl.add_custom_command("npm run dev")
	end,
}
