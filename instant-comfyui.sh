#!/bin/zsh

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed"
fi

brew install git

brew install python@3.12

# Go to home directory
cd

# Create Local directory
mkdir Local

cd Local

# Clone ComfyUI repository
git Clone https://github.com/comfyanonymous/ComfyUI.git

cd ComfyUI

# Create virtual environment
python3.12 -m venv .venv

# Activate virtual environment
source .venv/bin/activate

# Install requirements
pip install -r requirements.txt

# Go to custom_nodes directory
cd custom_nodes

# Clone ComfyUI-Manager
git clone https://github.com/ltdrdata/ComfyUI-Manager.git

# Go back to main directory
cd ..

# Create a simple start script for ComfyUI with shebang
echo '#!/bin/zsh\ncd ~/Local/ComfyUI && source .venv/bin/activate && python main.py' > start_comfyui.sh
echo "cd ~/Local/ComfyUI && source .venv/bin/activate && python main.py" > start_comfyui.sh

# Make the script executable
chmod +x start_comfyui.sh

# Create an AppleScript application to launch ComfyUI
cat > ~/Desktop/LaunchComfyUI.applescript << 'EOL'
tell application "Terminal"
    do script "~/Local/ComfyUI/start_comfyui.sh"
end tell
EOL

# Compile the AppleScript to a clickable application
osacompile -o ~/Desktop/LaunchComfyUI.app ~/Desktop/LaunchComfyUI.applescript

# Clean up the temporary AppleScript file
rm ~/Desktop/LaunchComfyUI.applescript

echo "Created LaunchComfyUI.app on your Desktop"


# Run ComfyUI
python main.py

# Wait for 10 seconds
sleep 10

# Open ComfyUI in browser
open "http://127.0.0.1:8188/"


