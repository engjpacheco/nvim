require('telescope').load_extension('media_files')
require'telescope'.setup {
  extensions = {
    media_files = {
      -- filetypes whitelist
      -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
      filetypes = {"png", "webp", "jpg", "jpeg", "pdf"},
      find_cmd = "rg" -- find command (defaults to `fd`)
    }
  },
}
