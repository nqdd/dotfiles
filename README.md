# My dot files

1. Install packages
- Install Homebrew
  ```bash
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

- Install Nerd fonts
  ```bash
  bash ./.scripts/nerd_fonts.sh
  ```

- Install neovim
  ```bash
  brew install nvim
  # for telescope
  brew install ripgrep
  # for nvim-pack/nvim-spectre
  brew install brew install gnu-sed
  # use gsed as sed
  echo 'export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"' >> ~/.zshrc
  ```

- Install tmux
  ```bash
  brew install tmux
  ```

- Install GNU software
  ```bash
  brew install stow
  ```
2. Use dot files

- Set environment variable
  ```bash
  echo 'export XDG_CONFIG_HOME="$HOME/.config"' >> ~/.zshrc
  ```

- Make symlinks
  ```bash
  stow nvim
  stow tmux
  ```