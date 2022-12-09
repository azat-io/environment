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

1. Install Iterm2:

```
brew install --cask iterm2
```

5. Install Zsh plugins:

```
brew install zsh-completions
```

6. Update `.zshrc`:

```
cd ~/ && curl -OL https://raw.githubusercontent.com/azat-io/environment/main/.zshrc
```

7. Remove "Last login" message:

```
touch ~/.hushlogin
```

## Setup iTerm2 color theme

1. Open file `gruvbox-dark.itermcolors`

2. Set `gruvbox-dark` as color theme

3. Replace background color to `#1d2021`

4. Open in iTerm Preferences / Profiles / Window. Set transperency to 8

## Enable Touch ID for sudo

1. Get root shell

```
sudo su
```

2. Add Touch ID to sudo file

```
(cat /etc/pam.d/sudo && echo "auth       sufficient     pam_tid.so") > /tmp/pam_tid.so
```

3. Move temp file

```
mv /tmp/pam_tid.so /etc/pam.d/sudo
```

4. Exit to user

```
exit
```

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
      581CB0AC3AFBF6B22A866D9EAABF6A15BE5271EF
uid                          Azat S. <to@azat.io>
ssb   4096R/42B317FD4BA89E7A 2016-03-10
```

3. Add signing key to `.gitconfig`

4. Get and copy GPG key:

```
gpg --armor --export 3AA5C34371567BD2 | pbcopy
```

4. Add key to GitHub and other services

## Install apps

Run installation scipts:

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/azat-io/environment/main/scripts/brew.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/azat-io/environment/main/scripts/code.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/azat-io/environment/main/scripts/lsp.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/azat-io/environment/main/scripts/asdf.sh)"
```
