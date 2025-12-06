{
  plugins.overseer = {
    enable = true;
  };
  keymaps = [
    { key = "<leader>pbt"; action = "<Cmd>OverseerToggle<Cr>"; }
    { key = "<leader>pbr"; action = "<Cmd>OverseerRun<Cr>"; }
  ];
}
