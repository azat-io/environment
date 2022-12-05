local status, l = pcall(require, 'lualine')

if (not status) then 
  return
end

l.setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox_dark',
    section_separators = { 
      left = '',
      right = '',
    },
    component_separators = {
      left = '', 
      right = '',
    },
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch' },
    lualine_c = { {
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 0 -- 0 = just filename, 1 = relative path, 2 = absolute path
    } },
    lualine_x = {
      { 'diagnostics', sources = { "nvim_diagnostic" }, symbols = { error = ' ', warn = ' ', info = ' ',
        hint = ' ' } },
      'encoding',
      'filetype'
    },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  },
  tabline = {},
  extensions = { 'fugitive' }
}
