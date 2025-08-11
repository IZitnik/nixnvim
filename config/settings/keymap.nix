{
  keymaps = [
    { key = "J"; action = "5j"; }
    { key = "K"; action = "5k"; }
    { key = "Y"; action = "y$"; }

    { key = "<leader>fw"; action = "<Cmd>w<Cr>"; }
    { key = "<leader>fq"; action = "<Cmd>q<Cr>"; }

    # pane switching
    { key = "<Left>";  action = "<C-w>h"; }
    { key = "<Down>";  action = "<C-w>j"; }
    { key = "<Up>";    action = "<C-w>k"; }
    { key = "<Right>"; action = "<C-w>l"; }

    # buffer keymaps
    { key = "<leader><Tab>"; action = "<Cmd>bnext<Cr>"; }
    { key = "<leader>bb"; action = "<Cmd>bnext<Cr>"; }
    { key = "<leader>BB"; action = "<Cmd>bNext<Cr>"; }
    { key = "<leader>bd"; action = "<Cmd>bdelete<Cr>"; }
  ];
}
