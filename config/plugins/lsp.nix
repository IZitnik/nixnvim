{ pkgs, ... }:
let 
  flake_expr = "builtins.getFlake (toString /persistent/nixos)";
in {
  plugins.lsp = {
    enable = true;
    inlayHints = true;
    servers = {
      texlab.enable = true;
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
          formatting.command = [ "${pkgs.nixfmt}/bin/nixfmt" ];
          options = {
            nixos.expr        = "${flake_expr}.nixosConfigurations.NixHadex.options";
            # home_manager.expr = "${flake_expr}.nixosConfigurations.NixHadex.config.home-manager.users.Tekk";
            flake_parts.expr  = "let flake = ${flake_expr}; in flake.debug.options // flake.currentSystem.options";
          };

          nixpkgs = {
            expr = "import nixpkgs { }";
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
