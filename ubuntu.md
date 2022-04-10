# Ubuntu Specific Snippets

## Cron JObs
```
cd /etc

Configure cron job in respectively files in etc directory
cron.d
cron.weekly
cron.daily

# for jobs which does not require root permissions
crontab -e
# for jobs which does require root permissions
sudo crontab -e
```

## Uninstalling software
Ubuntu `APT package manager` offers us two options for uninstalling the software from the system, either “remove” or “purge.”

- Remove
  - Remove will uninstall software from the system, but leave the configuration files behind.
  - If you have any intention of reinstalling the same software in the future, you should use the remove option instead of purge.
  - Ex: `sudo apt remove apache2`
- Purge
  - Purge will uninstall software from the system, along with the configuration files inside
  - Ex: `sudo apt purge apache2`
- Reinstall
  - Reinstall will remove software from your system and then install it again
  - Ex: `sudo apt reinstall apache2`


## Configure Repositories on Ubuntu
- Software installation on Linux systems is performed from repositories, which by default contain a large number of packages. But sometimes there are situations when the necessary software is not included, or the version is too old. In this case, you can add the necessary repository and install from it.

### List of repositories in Ubuntu
```
nano /etc/apt/sources.list

They can also be located in one of the files in the /etc/apt/sources.list.d/ folder.
```

### Adding repositories in Ubuntu
```
apt-add-repository ‘deb http://repository_address version branch’


Sometimes you need to install the GPG security key first. Let's take MariaDB as an example.
apt-key adv --fetch-keys 'https://mariadb.org/mariadb_release_signing_key.asc'
```

### Removing repositories
```
add-apt-repository --remove 'deb [arch=amd64,arm64,ppc64el] http://mirror.mephi.ru/mariadb/repo/10.5/ubuntu focal main'
```

### PPA repository in Ubuntu
```
During the installation of the PPA repository, the system automatically recognizes the repository and downloads the necessary keys.

> apt-add-repository ppa:repository/ppa

To remove PPA repository:
> apt-add-repository --remove ppa:repository/ppa

After editing the list of repositories, don't forget to update the list of packages in the system.
> apt update
```

