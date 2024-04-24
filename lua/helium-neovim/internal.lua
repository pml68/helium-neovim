local M = {}

function M.init()
  local treesitterExists, parsers = pcall(require, "nvim-treesitter.parsers")
  local _, installer = pcall(require, "nvim-treesitter.install")
  if treesitterExists then
    parsers.get_parser_configs().helium = {
      install_info = {
        url = "https://github.com/pml68/tree-sitter-helium.git",
        files = {"src/parser.c"},
      },
      filetype = "hsm"
    }

    if not parsers.has_parser("helium") then
      installer.update("helium")
    end
  else
    print("[helium-neovim] Required plugin 'tree-sitter/tree-sitter' not found.")
    print("             Ensure that it is installed in order to receive features such as syntax highlighting and code folding.")
  end
end

return M
