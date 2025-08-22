{
  plugins.which-key = {
    enable = true;
    settings = {
      preset = "modern";
      notify = false;
      expand = 1;
      spec = [
        { __unkeyed-1 = "<leader>b"; group = "Buffers"; icon = "󰓩 "; }
        { __unkeyed-1 = "<leader>p"; group = "Project"; icon = "🧰"; }
        { __unkeyed-1 = "<leader>f"; group = "File"; icon = "🗎"; }
        { __unkeyed-1 = "<leader>l"; group = "LSP"; icon = "💬"; }
      ];

    };
  };
}
