# Keychron

## Instructions

1. You can copy *hid_apple.conf* file from this repo and paste it at `/etc/modprobe.d/hid_apple.conf` (`cp ~/Downloads/my-configs/keychron/hid_apple.conf /etc/modprobe.d/hid_apple.conf`) or just execute `echo 'options hid_apple fnmode=2' | sudo tee /etc/modprobe.d/hid_apple.conf`

2. In order to apply the change to initial ramdisk make sure you have modconf included in `HOOKS` variable on mkinitcpio config (/etc/mkinitcpio.conf), and then you'll need to regenerate initramfs:
   - On Arch: `sudo mkinitcpio -P`
   - On Fedora: `dracut --regenerate-all --force`
