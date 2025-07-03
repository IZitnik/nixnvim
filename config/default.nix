{
  imports = [
    ./settings/keymap.nix
    # ./plugins/bufferline.nix
    # ./plugins/colorizer.nix
    # ./plugins/firenvim.nix
    # ./plugins/fugitive.nix
    # ./plugins/oil.nix
    # ./plugins/surround.nix
    # ./plugins/telescope.nix
    # ./plugins/treesitter.nix
  ] ++ (map (name: ./plugins/${name}) (builtins.attrNames (builtins.readDir ./plugins)));

  globals.mapleader = " ";

  opts = {
    updatetime = 100;
    tabstop = 2;
    softtabstop = 2;
    shiftwidth = 2;

    expandtab = true;
    smartindent = true;
    autoindent = true;

    cursorline = true;
    termguicolors = true;

    incsearch = true;
    hlsearch = true;
    showmatch = true;

    number = true;
    relativenumber = true;

    wrap = false;
    scrolloff = 5;
    sidescrolloff = 10;

    mouse = "a";

    shada = null;
    shadafile = null;
    undofile = true; # Persistent undo

    wildmenu = true;
  };

  colorschemes.catppuccin = {
    enable = true;
    settings = {
      flavour = "macchiato";
      term_colors = true;
    };
  };
}
