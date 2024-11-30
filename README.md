![ComfyUI Workflow](comfyui00.png)

# Instant ComfyUI for MacOS

This script will install ComfyUI and all dependencies on macOS.  I made this for my own use, but you're welcome to use it.

[Using your Mac for Generative AI Locally](https://blog.matthewrogers.org/b/CC5B6654-5B79-427C-AE26-EA337A25FCD4/Using-your-Mac-for-Generative-AI-Locally)

## Usage

Copy and paste this single line into your terminal:

```bash
/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/RamboRogers/mac-comfyui-instant/refs/heads/main/instant-comfyui.sh)"
```

### This script will:

1. Install Homebrew (if not already installed)
2. Install required dependencies:
   - Git
   - Python 3.12
3. Set up ComfyUI:
   - Clone the repository
   - Create and configure virtual environment
   - Install all requirements
4. Create convenient desktop launcher:
   - Generates LaunchComfyUI.app
   - Adds one-click startup capability
5. Launch ComfyUI automatically:
   - Starts the server
   - Opens web interface in default browser
6. A startup script will also be created in the Local/ComfyUI directory.  Double-clicking this script will also launch ComfyUI and open the web interface in your default browser.


> **Note:** Look for this icon on your desktop. Double-clicking it will automatically launch ComfyUI and open the web interface in your default browser for a seamless experience.

![LaunchComfyUI Icon](icon.png)




## License and Contact

This project is licensed under the GNU General Public License v3.0 (GPL-3.0) - see the [LICENSE](LICENSE) file for details.

### Connect With Me
- GitHub: [RamboRogers](https://github.com/RamboRogers)
- X/Twitter: [@rogerscissp](https://x.com/rogerscissp)
- Website: [matthewrogers.org](https://matthewrogers.org)

![Example Output](comfyui01.png)