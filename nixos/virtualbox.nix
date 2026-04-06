# VirtualBox settings needed solely for the VirtualBox Host
{config, pkgs, ...}: {
  # boot.kernelModules = [ "kvm" "kvm-amd" "kvm-intel" ];
  boot.kernelPackages = pkgs.linuxPackages_6_6;
  virtualisation.virtualbox.guest.enable = true;
}
