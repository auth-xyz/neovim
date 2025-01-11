return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
    [[            ／＞　　フ]],
    [[　　　 　  | 　_　 _|]],
    [[　 　　 　／` ミ＿xノ]],
    [[　　 　 /　　　 　 |]],
    [[　　　 /　 ヽ　　 ﾉ]],
    [[　 　 │　　|　|　|]],
    [[　／￣|　　 |　|　|]],
    [[　| (￣ヽ＿_ヽ_)__)]],
    [[　＼二つ]],
}
		alpha.setup(dashboard.opts)
	end,
}
