#External Dynamic DNS Service

## Abstract

In order to provide access to internal resources, from the internet, a proper external DNS service needs to be configured. 

After researching several possible options, [CloudFlare](CF) emerged as the clear choice.

## Requirements for External Dynamic DNS Service -> [RE109]
|ID|Requirement|Source|Date|
|---|---|---|---|
|RE109.1|Low cost, or free service|CM|09.08.2016
|RE109.2|Automated updates when external IP changes|CM|09.08.2016

Based on the requirements above, [CloudFlare](CF) ticks all the boxes. The free tier covers DNS hosting, and their publicly available [API](CFAPI) makes it possible to programatically update the A records when required.


[CF]:https://www.cloudflare.com
[CFAPI]: https://api.cloudflare.com
