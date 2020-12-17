# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports = [ (modulesPath + "/installer/scan/not-detected.nix") ];

  boot.initrd.availableKernelModules =
    [ "xhci_pci" "nvme" "usb_storage" "sd_mod" ];
  boot.initrd.kernelModules = [ "dm-snapshot" ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" = {
    device = "/dev/disk/by-uuid/e9d0b6a6-e7e8-4933-9cb1-b0829ede77ff";
    fsType = "ext4";
  };

  fileSystems."/boot" = {
    device = "/dev/disk/by-uuid/90E1-E579";
    fsType = "vfat";
  };

  swapDevices =
    [{ device = "/dev/disk/by-uuid/6a862766-600d-471f-983b-b3c5bebaa4e7"; }];

  powerManagement.cpuFreqGovernor = lib.mkDefault "powersave";
}
