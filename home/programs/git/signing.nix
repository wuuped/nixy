# This file is used to sign git commits using an SSH key.
{
  # CHANGEME: change this to your own SSH key.
  home.file.".ssh/allowed_signers".text = "";

  programs.git.settings = {
    commit.gpgsign = true;
    gpg.ssh.allowedSignersFile = "~/.ssh/allowed_signers";
    gpg.format = "ssh";
    user.signingkey = "~/.ssh/key.pub";
  };
}
