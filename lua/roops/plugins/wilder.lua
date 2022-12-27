local status, wilder = pcall(require, "wilder")
if not status then
	return
end
wilder.setup({ modes = { ":", "/", "?" } })
-- Disable Python remote plugin
wilder.set_option("use_python_remote_plugin", 0)

wilder.set_option("pipeline", {
	wilder.branch(
		wilder.cmdline_pipeline({
			fuzzy = 1,
			fuzzy_filter = wilder.lua_fzy_filter(),
		}),
		wilder.vim_search_pipeline()
	),
})

local gradient = {
	"#f4468f",
	"#fd4a85",
	"#ff507a",
	"#ff566f",
	"#ff5e63",
	"#ff6658",
	"#ff704e",
	"#ff7a45",
	"#ff843d",
	"#ff9036",
	"#f89b31",
	"#efa72f",
	"#e6b32e",
	"#dcbe30",
	"#d2c934",
	"#c8d43a",
	"#bfde43",
	"#b6e84e",
	"#aff05b",
}

for i, fg in ipairs(gradient) do
	gradient[i] = wilder.make_hl("WilderGradient" .. i, "Pmenu", { { a = 1 }, { a = 1 }, { foreground = fg } })
end

local popupmenu_renderer = wilder.popupmenu_renderer(wilder.popupmenu_border_theme({
	border = "rounded",
	pumblend = 20,
	empty_message = wilder.popupmenu_empty_message_with_spinner(),
	highlights = {
		gradient = gradient, -- must be set
		-- selected_gradient key can be set to apply gradient highlighting for the selected candidate.
	},
	highlighter = wilder.highlighter_with_gradient({
		wilder.lua_fzy_highlighter(), -- or wilder.lua_fzy_highlighter(),
	}),
	left = {
		" ",
		wilder.popupmenu_devicons(),
		wilder.popupmenu_buffer_flags({
			flags = " a + ",
			icons = { ["+"] = "", a = "", h = "" },
		}),
	},
	right = {
		" ",
		wilder.popupmenu_scrollbar(),
	},
}))

local wildmenu_renderer = wilder.wildmenu_renderer({
	highlights = {
		gradient = gradient, -- must be set
		-- selected_gradient key can be set to apply gradient highlighting for the selected candidate.
	},
	highlighter = wilder.highlighter_with_gradient({
		wilder.basic_highlighter(), -- or wilder.lua_fzy_highlighter(),
	}),
	separator = " · ",
	left = { " ", wilder.wildmenu_spinner(), " " },
	right = { " ", wilder.wildmenu_index() },
})

wilder.set_option(
	"renderer",
	wilder.renderer_mux({
		[":"] = popupmenu_renderer,
		["/"] = wildmenu_renderer,
		substitute = wildmenu_renderer,
	})
)
