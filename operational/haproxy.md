#Reverse proxying of incoming http and https requests

## Abstract

Due to the fact that the internet connection from the lab location is hidden behind one shared public IP, there is a need to reverse proxy incoming requests for http/https (80/443) traffic.


## Requirements for IPAM -> [RE111]
|ID|Requirement|Source|Date|
|---|---|---|---|
|RE111.1|Low cost, or free service|CM|10.10.2016
|RE111.2|Automatic proxying of incoming requests, based on hostname|CM|10.10.2016


Based on the requirements above, [HAproxy] was selected as the reverse proxy  solution of choice.


[HAProxy]:http://www.haproxy.org
