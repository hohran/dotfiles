vim.opt.nu = true
vim.opt.rnu = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim.undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.colorcolumn = "80"
local function get_highlight_color(group, attr)
    local ok, hl = pcall(vim.api.nvim_get_hl_by_name, group, true)
    if not ok or not hl[attr] then return nil end
    return string.format("#%06x", hl[attr])
end

-- Example usage: Get the foreground color of 'Normal'
vim.cmd("highlight LineNr guifg=" .. (get_highlight_color("Statement", "foreground") or "#ffffff"))
