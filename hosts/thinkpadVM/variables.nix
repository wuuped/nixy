{
  config,
  lib,
  ...
}: {
  imports = [
    # Choose your theme here:
    ../../themes/zen.nix
  ];

  config.var = {
    hostname = "thinkpadVM";
    username = "wuuped";
    configDirectory =
      "/home/"
      + config.var.username
      + "/.config/nixos"; # The path of the nixos configuration directory

    keyboardLayout = "us";

    location = "Hong Kong";
    timeZone = "Asia/Hong_Kong";
    defaultLocale = "en_HK.UTF-8";
    extraLocale = "en_GB.UTF-8";

    git = {
      username = "wuuped";
      email = "203348087+wuuped@users.noreply.github.com";
    };

    autoUpgrade = false;
    autoGarbageCollector = true;
  };

  # DON'T TOUCH THIS
  options = {
    var = lib.mkOption {
      type = lib.types.attrs;
      default = {};
    };
  };
}
