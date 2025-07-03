{
  plugins.web-devicons.enable = true;
  plugins.telescope = {
    enable = true;
    settings = {
      defaults.file_ignore_patterns = [
        "node_modules"
        "venv"
        "__pycache__"
        ".png$"
        ".jpg$"
      ];
    };
  };  

  keymaps = [
    { mode = "n"; key = "<leader>pf"; action = "<Cmd>Telescope find_files<Cr>"; }
    { mode = "n"; key = "<leader>pF"; action = "<Cmd>Telescope live_grep<Cr>"; }
  ];
}
