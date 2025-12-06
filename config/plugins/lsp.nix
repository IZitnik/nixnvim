{ lib, pkgs, ... }:

{
  plugins.lsp = {
    enable = true;
    inlayHints = true;
    servers = {
      html = {
        enable = true;
      };
      lua_ls = {
        enable = true;
      };
      hls = {
        enable = true;
        installGhc = false;
      };
      nixd = {
        enable = true;
        settings = {
          nixpkgs = {
            expr = "import nixpkgs { }";
          };
          formatting = {
            command = [ "${lib.getExe pkgs.alejandra}" ];
          };
        };
      };
      markdown_oxide = {
        enable = true;
      };
      pyright = {
        enable = true;
      };
      terraformls = {
        enable = true;
      };
      yamlls = {
        enable = true;
        settings = {
          schemaStore = {
            enable = false;
            url = "";
          };
        };
      };
      jdtls = { # java_language_server = {
        enable = true;
      };
    };
    keymaps = {
      silent = true;
      lspBuf = let scope = "<leader>ls"; in {
        "${scope}d" = {
          action = "definition";
          desc = "Goto Definition";
        };
        "${scope}f" = {
          action = "references";
          desc = "Goto References";
        };
        "${scope}D" = {
          action = "declaration";
          desc = "Goto Declaration";
        };
        "${scope}i" = {
          action = "implementation";
          desc = "Goto Implementation";
        };
        "${scope}t" = {
          action = "type_definition";
          desc = "Type Definition";
        };
        "<leader>li" = {
          action = "hover";
          desc = "Hover";
        };
        "${scope}r" = {
          action = "rename";
          desc = "Rename";
        };
        "<leader>lca" = {
          action = "code_action";
          desc = "Code action";
        };
      };
      diagnostic = {
        "<leader>lco" = {
          action = "open_float";
          desc = "Line Diagnostics";
        };
        "<leader>j" = {
          action = "goto_next";
          desc = "Next Diagnostic";
        };
        "<leader>k" = {
          action = "goto_prev";
          desc = "Previous Diagnostic";
        };
      };
    };
  };
}
