-- Lua configuration for coc.nvim and TypeScript
if vim.fn.has('nvim') then
  vim.api.nvim_exec([[
    autocmd FileType typescript,json setl formatprg=prettier\ --parser\ typescript\ --stdin\ --single-quote
  ]], false)
end

vim.g.coc_global_extensions = {'coc-tsserver', 'coc-prettier'}

-- Key mappings for TypeScript and JavaScript files
vim.api.nvim_exec([[
  autocmd FileType typescript nnoremap <silent> <buffer> gd :call CocAction('jumpDefinition')<CR>
  autocmd FileType typescript nnoremap <silent> <buffer> K :call CocAction('doHover')<CR>
  autocmd FileType typescript inoremap <silent> <buffer> <C-Space> :call CocActionAsync('doComplete')<CR>
]], false)

