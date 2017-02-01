# Dotfiles

*Fork of [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)*

## Installation

If these files are installed on a fresh macOS installation, skip to the next section, otherwise...

Pull down the code and run the bootstrap script:

```bash
git clone https://github.com/flovan/dotfiles.git && cd dotfiles && source bootstrap.sh
```

To update, run the bootstrap script again:

```bash
source bootstrap.sh
```

## Fresh macOS installation

Make default directories for development (opinionated):

```bash
mkdir -p ~/dev/flovan && cd ~/dev/flovan
```

Pull down the code and run the mac setup script:

```bash
git clone https://github.com/flovan/dotfiles.git && cd dotfiles && source setup-mac.sh
```
