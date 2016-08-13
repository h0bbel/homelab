#!/bin/sh

version='0.2'
cfddns='[CloudFlareDDNS-'$version']'

#Get current public ip

MYIP=$(curl -s ifconfig.me/ip)
OLDIP=$(cat oldip.txt)


# Instructions:
# Define variables for API calls. Replace these with your own values!  		    	#
#################################################################################
token=12345678901234567890									  			# CloudFlare token					#
email=example@example.com				  									# Cloudflare login account	#
z=example.com  				 	  													# Domain Name								#
id=1234567890					  														# CloudFlare Record ID			#
type=A			 			 																 	# CloudFlare Record Type		#
ttl=1						  																	# TTL value									#
content=$MYIP					  														# IP address								#
#################################################################################

if [ "$1" = "-f" ]
then
	echo 'cf-ddns called with -f, forcing update!'
	OLDIP=''
else
	echo 'No parameter found, normal run'
fi

if [ "$MYIP" = "$OLDIP" ]

then
  logger -s $cfddns "[INFO] No IP change detected" # Write to Syslog

else
  #echo "IP change detected, updating CloudFlare trough API. Old IP was "$OLDIP" - New IP is " $MYIP
  logger -s $cfddns "[INFO] IP change detected, updating CloudFlare trough API. Old IP was "$OLDIP" - New IP is " $MYIP 			# Write to syslog


#########
# Instructions:
# Copy this block for the different hostnames you want to dynamically update, and insert unique id and name for the record.
########

# hostname: test.example.com
	id=51234567890
	name=test.vninja.com

	# Update record:
	curl -s -k  -L -X POST -H 'Content-Type: application/x-www-form-urlencoded' -d 'a=rec_edit&tkn='$token'&email='$email'&z='$z'&id='$id'&type='$type'&name='$name'&ttl='$ttl'&content='$content 'https://www.cloudflare.com/api_json.html'

# hostname: test2.example.com
	id=1234567891
	name=test2.example.com

	# Update record
	curl -s -k  -L -X POST -H 'Content-Type: application/x-www-form-urlencoded' -d 'a=rec_edit&tkn='$token'&email='$email'&z='$z'&id='$id'&type='$type'&name='$name'&ttl='$ttl'&content='$content 'https://www.cloudflare.com/api_json.html'


 echo $MYIP > oldip.txt
  logger -s $cfddns [INFO] "New IP is: " $MYIP
fi
