
local cmp = require('cmp')
cmp.setup{
    snippet = { expand = function(args) vim.fn["vsnip#anonymous"](args.body) end },
    mapping = {
        -- ['<CR>'] = cmp.mapping.confirm({ select = false }),
        ['<Tab>'] = cmp.mapping(function(fallback) if cmp.visible() then cmp.select_next_item() elseif vim.fn['vsnip#available']() == 1 then vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>(vsnip-expand-or-jump)', true, true, true), '') else fallback() end end, {"i", "s",}),
        ['<S-Tab>'] = cmp.mapping(function(fallback) if cmp.visible() then cmp.select_prev_item() else fallback() end end, {"i", "s",}),
        ['<CR>'] = cmp.mapping(function(fallback) if vim.fn['vsnip#available']() == 1 then vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>(vsnip-expand-or-jump)', true, true, true), '') else fallback() end end, {"i", "s",}),
    },
    sources = {
        { name = 'buffer', max_item_count = 20, keyword_length = 2, option = { get_bufnrs = function() return vim.api.nvim_list_bufs() end }},
        { name = 'vsnip', max_item_count = 20, keyword_length = 1},
        { name = 'path', max_item_count = 20 },
        { name = 'spell', max_item_count = 5 },
    },
}
cmp.setup.cmdline('/', { sources = {{ name = 'buffer', max_item_count = 20 }, }})
cmp.setup.cmdline(':', { sources = {{ name = 'path', max_item_count = 20 }, { name = 'cmdline', max_item_count = 20 }, }})
