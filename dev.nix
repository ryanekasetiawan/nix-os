# To learn more about how to use Nix to configure your environment
# see: https://developers.google.com/idx/guides/customize-idx-env
{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "stable-23.11"; # or "unstable"
  # networking.firewall = {
  #   enable = true;
  #   allowed = [ 22 80 443 3000 ];
  # };
  # Use https://search.nixos.org/packages to find packages
  packages = [
    # pkgs.go
    # pkgs.python311
    # pkgs.python311Packages.pip
    pkgs.nodejs_20
    # pkgs.nodePackages.nodemon
    pkgs.openssh
    pkgs.unzip
  ];
  # Sets environment variables in the workspace
  env = {};
  idx = {
    # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
    extensions = [
      # "vscodevim.vim"
      "anseki.vscode-color"
      "christian-kohler.path-intellisense"
      "Codeium.codeium"
      "dbaeumer.vscode-eslint"
      "dsznajder.es7-react-js-snippets"
      "esbenp.prettier-vscode"
      "formulahendry.auto-rename-tag"
      "mhutchie.git-graph"
      "mrmlnc.vscode-scss"
      "oderwat.indent-rainbow"
      "steoates.autoimport"
      "bradlc.vscode-tailwindcss"
      "ms-vscode.js-debug"
      "ms-vscode.vscode-typescript-next"
      "rangav.vscode-thunder-client"
      "Zignd.html-css-class-completion"
      "jock.svg"
      "PKief.material-icon-theme"
      "zhuangtongfa.material-theme"
      "deerawan.vscode-faker"
      "eamodio.gitlens"
      "formulahendry.auto-close-tag"
      "glenn2223.live-sass"
      "ritwickdey.LiveServer"
      "sleistner.vscode-fileutils"
      "vincaslt.highlight-matching-tag"
      "FallenMax.mithril-emmet"
      "burkeholland.simple-react-snippets"
      "SimonSiefke.svg-preview"
    ];
    # Enable previews
    previews = {
      enable = true;
      previews = {
        # web = {
        #   # Example: run "npm run dev" with PORT set to IDX's defined port for previews,
        #   # and show it in IDX's web preview panel
        #   command = ["npm" "run" "dev"];
        #   manager = "web";
        #   env = {
        #     # Environment variables to set for your server
        #     PORT = "$PORT";
        #   };
        # };
      };
    };
    # Workspace lifecycle hooks
    workspace = {
      # Runs when a workspace is first created
      onCreate = {
        # Example: install JS dependencies from NPM
        # npm-install = "npm install";
        # Open editors for the following files by default, if they exist:
        # default.openFiles = [ ".idx/dev.nix" "README.md" ];
      };
      # Runs when the workspace is (re)started
      onStart = {
        # Example: start a background task to watch and re-build backend code
        # watch-backend = "npm run watch-backend";
      };
    };
  };
}
