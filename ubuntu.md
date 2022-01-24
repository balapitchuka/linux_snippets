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
