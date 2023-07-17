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
local template_lhs = 'yw%s'
local template_rhs = 'c%s<Esc>pa%s<Esc>'

for left_pair, right_pair in pairs(symbols_pairs) do
    local lhs = string.format(template_lhs, left_pair, right_pair)
    local rhs = string.format(template_rhs, left_pair, right_pair)

    vim.keymap.set('v', lhs, rhs, { noremap = true })
end
