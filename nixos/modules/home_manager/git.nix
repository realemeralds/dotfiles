{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    # lfs.enable = true;

    settings = {
      user.name = "Matt C.";
      user.email = "102229990+realemeralds@users.noreply.github.com";

      push.autoSetupRemote = true;
      init.defaultBranch = "main";
    };
  };

  programs.gh = {
    enable = true;
    settings = {
      git_protocol = "ssh";
    };
  };
}
