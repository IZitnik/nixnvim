let 
  pluginImports = 
    with builtins; map (name: ./plugins/${name}) (attrNames (readDir ./plugins));
in {
  imports = [
    ./settings/keymap.nix
  ] ++ pluginImports;

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
