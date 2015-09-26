# Dotfiles

*Fork of [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)*

### Installation & Update

```bash
cd; curl -#L https://github.com/flovan/dotfiles/tarball/master | tar -xzv --strip-components 1 --exclude={README.md,bootstrap.sh,LICENSE-MIT.txt} && cd dotfiles && set -- -f; source bootstrap.sh
```

### New Mac Setup

Install Oh My Zsh

```bash
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Tweak OS X defaults:

```bash
./.osx
```

Install [Homebrew](http://brew.sh/):

```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Install some formulae:

```bash
./brew.sh
```
