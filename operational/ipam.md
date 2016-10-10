#IP Address Management (IPAM)

## Abstract

IP Address Management is important in larger networks, but also small homelab environments can benefit from automated detection and documentation of in-use IP adresses.

## Requirements for IPAM -> [RE111]
|ID|Requirement|Source|Date|
|---|---|---|---|
|RE111.1|Low cost, or free service|CM|10.10.2016
|RE111.2|Automatic detection of new devices|CM|10.10.2016


Based on the requirements above, phpipam was selected as the [IPAM](IPAM) solution of choice.

Custom code was developed to provide notifications to homelab [Slack](Slack) channel.

[IPAM]:http://phpipam.net
[Slack]:http://slack.com