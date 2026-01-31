# BitWiz4rd Linux Config ✨🧙‍♂️

A sleek, minimal, and emoji-friendly collection of dotfiles and configs for a beautiful Linux desktop powered by bspwm, polybar, picom, and sxhkd.

**Quick Overview**
- **Window manager:** `bspwm` + `sxhkd`
- **Compositor:** `picom`
- **Status bar:** `polybar`

**Getting Started**

How to install:
```bash
git clone https://github.com/BitWiz4rd/BitWiz4rd_Kali.git
cd BitWiz4rd_Kali
chmod +x install.sh && ./install.sh
```

**Structure**
- **`cfg/bspwm/`**: `bspwmrc`, helpers, and `xsessions` entry.
- **`cfg/picom/`**: `picom.conf` for compositor settings.
- **`cfg/polybar/`**: Bars, colors, and helper scripts.
- **`cfg/sxhkd/`**: Hotkeys in `sxhkdrc`.




**Customization Tips**
- Edit `cfg/polybar/colors.ini` to change the color scheme.
- Tweak `cfg/picom/picom.conf` for blur, opacity, and shadow strength.

**Troubleshooting**
- If panels or bars don't appear, ensure `polybar/launch.sh` is executable and run it from a terminal to see errors.
- For compositor issues, try toggling `picom` glx vs. xrender in `cfg/picom/picom.conf`.

**Contributing**
- Feel free to open issues or PRs with improvements, new themes, or scripts.

**License**
- MIT — see `LICENSE`

Happy tweaking! 🚀🛠️

## **VMware on Windows 11 (Important Tip)**

Disable VBS + Core Isolation + Windows Hypervisor Platform.

If you run this setup inside VMware 25H2 host, add these lines to your `.vmx` file to improve Vulkan/DX12 sync and avoid stuttering:

```
mks.vk.syncPerEndFrame = "TRUE"
mks.dx12.syncPerEndFrame = "TRUE"
```

