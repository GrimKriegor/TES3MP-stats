# TES3MP-stats

Simple Python script for aggregating player and server status for the [TES3MP website](https://tes3mp.com)

## Getting it

```
git clone https://github.com/GrimKriegor/TES3MP-stats.git /var/www/tes3mp/stats
```

## Executing it

Edit your cron table, by running:

```
crontab -e
```

And append the following line:

```
00 * * * * cd /var/www/tes3mp/stats/ && /usr/bin/python3 ./tes3mp-stats.py
```
