# Setup

## Update OS

Open "System preference" / "Software update".

## Add iCloud account

Open "System preference" / "Internet accounts".

## Enable FileVault

Open "System preference" / "Security & Privacy" / "FileVault".

## Install Homebrew

Use this command:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Setup Terminal

1. Install Zsh with the following command:

```
brew install zsh
```

2. Install Oh My Zsh:

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

3. Install Starship Zsh theme:

```
brew install starship
```

4. Setup Zsh config:

```
cp ./.zshrc ~/
```

5. Install Iterm2:

```
brew install --cask iterm2
```

6. Install Zsh plugins:

```
brew install zsh-autosuggestions
brew install zsh-completions
```

7. Update `.zshrc`:

```
cp ./.zshrc ~/
source ~/.zshrc
```

## Setup iTerm2 color theme

1. Open file `gruvbox-dark.itermcolors`

2. Set `gruvbox-dark` as color theme

3. Replace background color to `#1d2021`

## SSH key

1. Generate SSH key:

```
ssh-keygen -t ed25519 -C "to@azat.io"
```

2. Copy generated public SSH key:

```
cat ~/.ssh/id_rsa.pub | pbcopy
```

3. Add key to GitHub and other services

## GPG key

1. Generate GPG key:

```
gpg --full-generate-key
```

2. Copy the long form of the GPG key id with command:

```
gpg --list-secret-keys --keyid-format=long
```

In this example long form is `3AA5C34371567BD2`:

```
sec   4096R/3AA5C34371567BD2 2016-03-10 [expires: 2017-03-10]
uid                          Azat S. <to@azat.io>
ssb   4096R/42B317FD4BA89E7A 2016-03-10
```

3. Get and copy GPG key:

```
gpg --armor --export 3AA5C34371567BD2 | pbcopy
```

4. Add key to GitHub and other services
