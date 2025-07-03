{
  plugins.firenvim = {
    enable = true;
    settings = {
      localSettings = {
        ".*" = {
          cmdline = "neovim";
          content = "text";
          priority = 1;
          selector = "textarea";
          takeover = "never";
        };
      };
    };
  };
}
