# Setup

## Update OS

Open "System preference" / "Software update".

## Add iCloud account

Open "System preference" / "Internet accounts".

## Enable FileVault

Open "System preference" / "Security & Privacy" / "FileVault".

## Setup iTerm2 color theme

1. Open file `gruvbox-dark.itermcolors`

2. Set `gruvbox-dark` as color theme

3. Replace background color to `#1d2021`

## Install Oh My Zsh

Use this command:

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
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
uid                          Azat S. <to@azat.io>
ssb   4096R/42B317FD4BA89E7A 2016-03-10
```

3. Get and copye GPG key:

```
gpg --armor --export 3AA5C34371567BD2 | pbcopy
```

4. Add key to GitHub and other services
