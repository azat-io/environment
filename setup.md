# Setup

## SSH key

1. Generate SSH key:

```
ssh-keygen -t ed25519 -C "to@azat.io"
```

2. Copy generated public SSH key:

```
cat ~/.ssh/id_rsa.pub
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
gpg --armor --export 3AA5C34371567BD2
```

4. Add key to GitHub and other services
