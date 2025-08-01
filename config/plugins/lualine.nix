{
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        icons_enabled = true;
        theme = "auto";
        component_separators = { left = "|"; right = "|"; };
        section_separators = { left = ""; right = ""; };
        always_divide_middle = true;
        globalstatus = false;
        refresh = {
          statusline = 1000;
          tabline = 1000;
          winbar = 1000;
        };
      };

      sections = {
        lualine_a = [ "hostname" ];
        lualine_b = [ "branch" "diff" "diagnostics" ];
        lualine_c = [ "filename" ];
        lualine_x = [ "encoding" ];
        lualine_y = [ "filetype" "location" ];
        lualine_z = []; 
      };
      inactive_sections = {
        lualine_a = [];
        lualine_b = [];
        lualine_c = [ "filename" ];
        lualine_x = [ "location" ];
        lualine_y = [];
        lualine_z = [];
      };
    };
  };
}
