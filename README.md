## Introduction

A very simple wrapper script for [rustic](https://github.com/rustic-rs/rustic).
It just loops through backup profiles those are stored in ~/.config/rustic and
either backs up them or deletes the old snapshots.

## Requirements

* [ rustic ](https://github.com/rustic-rs/rustic)

## Installation

```
git clone "https://github.com/tricarte/backupstic" "$HOME/repos/backupstic"
chmod +x "$HOME/repos/backupstic/backupstic"
# Optional renaming
sudo ln -s "$HOME/repos/backupstic/backupstic" "/usr/local/bin/upstic"
```

Source the included completion file from your .bashrc file to enable shell
completion.

```
source "$HOME/repos/backupstic/.backupstic-completion.bash"
```

## Commands

| Command        | Description |
| -------------- | -----------|
| create         | Create a new backup profile in ~/.config/rustic. |
| backup         | Backup a specific profile or all profiles in ~/.config/rustic. |
| edit           | Open the profile in your favorite editor. |
| forget         | Delete old snapshots of a profile according to the forget settings. |

## Creating a new backup profile

`backupstic create profile_name`

`backupstic edit profile_name`

Above command will open the profile in your text editor. Set the repository and
the backup sources.

`backupstic init profile_name`

This will create the repository that you have set in above step.

`backupstic backup profile_name`

Finally backup the profile.
