{
  imports = [
    "settings/keymap.nix"
  ];

  global.mapleader = " ";

  opts = {
    tabstop = 2;
    softtabstop = 2;
    shiftwidth = 2;

    expandtab = true;
    smartindent = true;
    autoindent = true;

    cursorline = true;

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

    wildmenu = true;
  };
}
