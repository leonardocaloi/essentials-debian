# Debian Essentials

This project helps you quickly set up a Debian-based environment with essential tools and configurations for development and general usage. It includes the installation of essential packages and setup of the Oh My Zsh shell with the Spaceship theme. Optionally, it also allows you to create a new user.

## Getting Started

```bash
if ! command -v git >/dev/null 2>&1; then
    echo "Git não está instalado. Instalando git-all..."
    sudo apt update
    sudo apt install -y git-all
else
    echo "Git já está instalado."
fi
```

To get started, clone this repository:

```bash
git clone https://github.com/leonardocaloi/essentials-debian
```

Change into the essentials-debian directory:

```bash
cd essentials-debian
```

## Installation

There are two ways to execute the setup scripts:

1. **Recommended**: Running the script as a non-root user provided by your VM or hosting provider. This will install the necessary packages and configure the shell for the current user:

```bash
chmod +x user_all_essentials.sh
./user_all_essentials.sh
```

2. Running the script as the root user. This will create a new user, install the necessary packages, and configure the shell for the new user:

```bash
chmod +x root_all_essentials.sh
./root_all_essentials.sh
```

## Components

This project sets up the following components:

- Optionally, a new user with sudo privileges (if executed as root)
- Essential packages such as git, sudo, curl, vim, and more
- Docker and Docker Compose
- Zsh shell with Oh My Zsh, Spaceship theme, and Zinit plugin manager
- Zinit plugins for syntax highlighting, autosuggestions, and completions

## Final Notes

Use the recommended method (non-root user provided by your VM or hosting provider) if you already have a user with sudo privileges. If you need to create a new user, you can run the script as the root user.

If you encounter any issues or have suggestions for improvements, feel free to open an issue or submit a pull request on the project's GitHub page.