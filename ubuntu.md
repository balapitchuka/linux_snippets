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
