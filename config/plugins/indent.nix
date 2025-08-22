{
  highlight = {
    Indent = {
      fg = "#b5bfe2";
    };
    Scope = {
      fg = "#85c1dc";
    };
  };
  plugins.indent-blankline = {
    enable = true;

    settings = {
      indent = {
        char = "▏"; #"❘";
        highlight = "Indent";
      };
      scope = { 
        enabled = true;
        char = "▏";# "▎"; 
        highlight = "Scope";
        show_start = true;
        show_end = false;
        # show_exact_scope = true;
        # priority = 1;
      };
    };
  };
}
