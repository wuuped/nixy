# VirtualBox settings needed solely for the VirtualBox Host
{config, ...}: {
  virtualisation.virtualbox.guest.enable = true;
  system.copySystemConfiguration = true;
}
