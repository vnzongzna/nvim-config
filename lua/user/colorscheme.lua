vim.cmd [[
try
  colorscheme gotham256 
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
