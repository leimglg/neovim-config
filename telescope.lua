require("telescope").setup { defaults = {  mappings = { 
    i = { ["<c-f>"] = "delete_buffer", ["<c-j>"] = "move_selection_next", ["<c-k>"] = "move_selection_previous", ["<up>"] = "preview_scrolling_up", ["<down>"] = "preview_scrolling_down", ["<C-/>"] = "which_key", ["<esc>"] = "close", ["jk"] = "close",
        ["<Tab>"] = "move_selection_previous", ["<S-Tab>"] = "move_selection_next",  ["<C-l>"] = "add_selection",  ["<C-h>"] = "remove_selection",  ["<C-s>"] = "select_vertical", ["<C-v>"] = "select_horizontal",}, 
    n = { ["<c-f>"] = "delete_buffer", ["<c-j>"] = "move_selection_next", ["<c-k>"] = "move_selection_previous", ["<up>"] = "preview_scrolling_up", ["<down>"] = "preview_scrolling_down", ["<C-/>"] = "which_key", ["<esc>"] = "close", ["jk"] = "close",
        ["<Tab>"] = "move_selection_previous", ["<S-Tab>"] = "move_selection_next",  ["<C-l>"] = "add_selection",  ["<C-h>"] = "remove_selection", ["<C-s>"] = "select_vertical", ["<C-v>"] = "select_horizontal",},}}}
