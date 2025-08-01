local options = {
	laststatus = 3,
	ruler = false,            --disable extra numbering
	showmode = false,         --not needed due to lualine
	showcmd = false,
	wrap = true,              --toggle bound to leader W
	mouse = "a",              --enable mouse
	clipboard = "unnamedplus", --system clipboard integration
	history = 100,            --command line history
	swapfile = false,         --swap just gets in the way, usually
	backup = false,
	undofile = true,          --undos are saved to file
	cursorline = true,        --highlight line
	ttyfast = true,           --faster scrolling
	smoothscroll = true,
	title = true,             --automatic window titlebar
	shiftwidth = 2,
	number = true,            --numbering lines
	relativenumber = true,    --toggle bound to leader nn
	numberwidth = 4,

	smarttab = true, --indentation stuff
	cindent = true,
	autoindent = true,
	tabstop = 2, --visual width of tab

	foldmethod = "expr",
	foldlevel = 99, --disable folding, lower #s enable
	foldexpr = "nvim_treesitter#foldexpr()",

	termguicolors = true,

	ignorecase = true,     --ignore case while searching
	smartcase = true,      --but do not ignore if caps are used

	conceallevel = 2,      --markdown conceal
	concealcursor = "nc",
	mousemoveevent = false, -- block mouse movements
	splitkeep = 'screen',  --stablizie window open/close
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.diagnostic.config({
	signs = true,       --Show inline errors
	virtual_text = true, --Show signs in gutter
	update_in_insert = false,
})
