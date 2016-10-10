#Reverse proxying of incoming http and https requests

## Abstract

Due to the fact that the internet connection from the lab location is hidden behind one shared public IP, there is a need to reverse proxy incoming requests for http/https (80/443) traffic.


## Requirements for IPAM -> [RE111]
|ID|Requirement|Source|Date|
|---|---|---|---|
|RE106.1|Low cost, or free service|CM|10.10.2016
|RE106.2|Automatic proxying of incoming requests, based on hostname|CM|10.10.2016


Based on the requirements above, [HAproxy] was selected as the reverse proxy  solution of choice. HAProxy is set up to redirect incoming traffic based on referrer (hostname). hostname1.tld redirects to internal ip for hostname1.local and hostname2.tld redirects to internal ip for hostname2.local

### Configuration

COnfiguration details will come later, the current setup works (in theory/lab), but needs to be verified.


[HAProxy]:http://www.haproxy.org
