## Introduction

A very simple wrapper script for [rustic](https://github.com/rustic-rs/rustic).
It just loops through backup profiles those are stored in ~/.config/rustic and
either backs up them or deletes the old snapshots.

## Requirements

* [ rustic ](https://github.com/rustic-rs/rustic)
* [ fzf ](https://github.com/junegunn/fzf)
* [ lf ](https://github.com/gokcehan/lf)

## Installation

```
git clone "https://github.com/tricarte/rstc" "$HOME/repos/rstc"
chmod +x "$HOME/repos/rstc/rstc"
sudo ln -s "$HOME/repos/rstc/rstc" "/usr/local/bin/rstc"
```

Source the included completion file from your .bashrc file to enable shell
completion.

```
source "$HOME/repos/rstc/.rstc-completion.bash"
```

## Commands

| Command        | Description |
| -------------- | -----------|
| create         | Create a new backup profile in ~/.config/rustic. |
| init           | Initialize the profile you have previously created with 'create' command. |
| backup         | Backup a specific profile or all profiles in ~/.config/rustic. |
| restore        | Restore a specific profile in ~/.config/rustic. |
| edit           | Open the profile in your favorite editor. |
| forget         | Delete old snapshots of a profile according to the forget settings. |
| go             | Run backup and forget in one go. |
| snapshots      | List snapshots of a backup profile. |

## Creating a new backup profile

```bash
rstc create profile_name
```

```bash
rstc edit profile_name
```

Above command will open the profile in your text editor. Set the repository and
the backup sources.

Below will initialize the repository that you have set in above step.

```bash
rstc init profile_name
```

Finally backup the profile.

```bash
rstc backup profile_name
```
