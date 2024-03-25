vim.filetype.add(
    {
        pattern = {
            ['.*/*.ms'] = 'groff',
            ['.*/*.mom'] = 'groff',
            ['.*/*.rmd'] = 'markdown',
            ['.*/*.tex'] = 'tex',
        }
    }
)
