local symbols_pairs = {
    ['"'] = '"',
    ["'"] = "'",
    ['{'] = '}',
    ['['] = ']',
    ['<'] = '>',
    ['('] = ')',
    ['*'] = '*',
    ['-'] = '-',
    ['#'] = '#',
    ['%'] = '%'
}
local template_binding = 'yw%s'
local template_executing_script = 'c%s<Esc>pa%s<Esc>'

for left_side_pair, right_side_pair in pairs(symbols_pairs) do
    local binding = string.format(template_binding, left_side_pair)
    local executing_script = string.format(template_executing_script,
        left_side_pair, right_side_pair)

    vim.keymap.set('v', binding, executing_script, { noremap = true })
end
