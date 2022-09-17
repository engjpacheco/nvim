local M = {}

function M.get(cpt)
	return {
		DashboardShortCut = { fg = cpt.magenta, style = "italic" },
		DashboardHeader = { fg = cpt.magenta },
		DashboardCenter = { fg = cpt.fg_gutter, style = "italic" },
		DashboardFooter = { fg = cpt.cyan, style = "italic" },
	}
end

return M
