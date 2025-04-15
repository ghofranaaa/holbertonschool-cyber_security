# HolbertonSchool Reconnaissance Report

## Subdomains and IP Addresses

| Subdomain                                      | IP Address        | Source        |
|-----------------------------------------------|-------------------|---------------|
| blog.holbertonschool.com                      | 192.0.78.131      | hackertarget  |
| staging-apply-forum.holbertonschool.com       | 13.38.122.220     | hackertarget  |
| v3.holbertonschool.com                         | 54.89.246.137     | hackertarget  |
| www.holbertonschool.com                        | 35.152.117.67     | alienvault    |
| read.holbertonschool.com                       | 51.44.50.40       | alienvault    |
| help.holbertonschool.com                       | 99.83.190.102     | crtsh         |
| yriry2.holbertonschool.com                     | 52.47.143.83      | hackertarget  |
| apply.holbertonschool.com                      | 52.47.158.255     | alienvault    |
| assets.holbertonschool.com                     | 3.165.255.110     | alienvault    |
| fr.holbertonschool.com                         | 35.152.117.67     | alienvault    |
| support.holbertonschool.com                    | 216.198.53.1      | alienvault    |
| staging-rails-assets-apply.holbertonschool.com| 18.239.50.5       | alienvault    |
| lvl2-discourse-staging.holbertonschool.com     | 13.38.216.13      | hackertarget  |
| v1.holbertonschool.com                         | 54.86.136.129     | hackertarget  |
| fr.webflow.holbertonschool.com                 | 104.17.201.193    | alienvault    |
| v2.holbertonschool.com                         | 34.203.198.145    | hackertarget  |
| rails-assets.holbertonschool.com              | 3.160.188.23      | alienvault    |
| smile2021.holbertonschool.com                  | 15.160.106.203    | alienvault    |
| en.fr.holbertonschool.com                      | 104.17.201.193    | crtsh         |
| webflow.holbertonschool.com                    | 51.21.126.187     | alienvault    |

## Technologies and Frameworks (based on Shodan analysis)

> These details can be retrieved by running:  
> `shodan host <IP>`  
> *(Requires a Shodan API key and account initialization)*

blog.holbertonschool.com (IP: 192.0.78.131)
Server: Nginx

Ports Open: 80 (HTTP), 443 (HTTPS)

SSL Versions: TLSv1.2, TLSv1.3 (insecure versions disabled)

Hostnames: wordpress.com

City: San Francisco

Organization: Automattic, Inc

Detected Vulnerabilities:

CVE-2015-9251

CVE-2020-11022

CVE-2019-11358

CVE-2020-11023

## Subdomain: v3.holbertonschool.com
- IP Address: 13.38.122.220
- Server: Unknown (Shodan access denied)
- Notes: Access denied for IP lookup on free Shodan tier. 

## Subdomain: staging-apply-forum.holbertonschool.com
- IP Address: 54.89.246.137
- Server: Unknown (Shodan access denied)
- Notes: Access denied for IP lookup on free Shodan tier. 

## Subdomain: www.holbertonschool.com
IP Address: 35.152.117.67
Hostnames: cantilever.co, ec2-35-152-117-67.eu-south-1.compute.amazonaws.com
Location: Milan, Italy
Organization: Amazon Data Services Italy
Open Ports:

80/tcp → nginx

81/tcp → nginx

443/tcp → SSL/TLS (supports TLSv1.2, TLSv1.3; older versions disabled)

Technologies:

Web Server: nginx

## Subdomain: read.holbertonschool.com 
- IP Address: 51.44.50.40
- Server: Unknown (Shodan access denied)
- Notes: Access denied for IP lookup on free Shodan tier. Try tools like WhatWeb or curl for more info.

## Subdomain: help.holbertonschool.com
IP Address: 99.83.190.102
Hostnames: aacb0a264e514dd48.awsglobalaccelerator.com, split.io
Location: Seattle, United States
Organization: Amazon.com, Inc.
Open Ports:

80/tcp → nginx

443/tcp → SSL/TLS (supports TLSv1.2, TLSv1.3; older versions disabled)

Technologies:

Web Server: nginx

## Subdomain: yriry2.holbertonschool.com
- IP Address: 52.47.143.83
- Server: Unknown (Shodan access denied)
- Notes: Access denied for IP lookup on free Shodan tier. 

## Subdomain: apply.holbertonschool.com
- IP Address: 52.47.158.255
- Server: Unknown (Shodan access denied)
- Notes: Access denied for IP lookup on free Shodan tier. 

## Subdomain: assets.holbertonschool.com 
- IP Address: 3.165.255.110 
- Server: Unknown (Shodan access denied)
- Notes: Access denied for IP lookup on free Shodan tier. 


## Subdomain: support.parkrun.com
IP Address: 216.198.53.1
Hostnames: support.parkrun.com, safeguarding.parkrun.com, volunteer.parkrun.com
Location: San Francisco, United States
Organization: Zendesk, Inc.

Open Ports:

80/tcp

443/tcp → SSL/TLS (supports TLSv1.2, TLSv1.3; older versions disabled)

2052/tcp

2053/tcp

2082/tcp

2083/tcp

2086/tcp

2087/tcp

2095/tcp

2096/tcp

8080/tcp → CloudFlare

8443/tcp → CloudFlare

8880/tcp

Technologies:

Proxy/CDN: CloudFlare (on ports 8080 and 8443)

## staging-rails-assets-apply.holbertonschool.com
- IP Address: 18.239.50.5 
- Server: Unknown (Shodan access denied)
- Notes: Access denied for IP lookup on free Shodan tier. 

## lvl2-discourse-staging.holbertonschool.com 
- IP Address: 13.38.216.13
- Server: Unknown (Shodan access denied)
- Notes: Access denied for IP lookup on free Shodan tier. 

## v1.holbertonschool.com 
- IP Address: 54.86.136.129
- Server: Unknown (Shodan access denied)
- Notes: Access denied for IP lookup on free Shodan tier. 

## fr.webflow.holbertonschool.com 
- IP Address: 104.17.201.193
- Server: Unknown (Shodan access denied)
- Notes: Access denied for IP lookup on free Shodan tier. 

## v2.holbertonschool.com  
- IP Address: 34.203.198.145 
- Server: Unknown (Shodan access denied)
- Notes: Access denied for IP lookup on free Shodan tier. 

## rails-assets.holbertonschool.com
- IP Address: 3.160.188.23
- Server: Unknown (Shodan access denied)
- Notes: Access denied for IP lookup on free Shodan tier. 

## Subdomain: mfkessai.co.jp
IP Address: 15.160.106.203
Hostnames: ec2-15-160-106-203.eu-south-1.compute.amazonaws.com, mfkessai.co.jp
Location: Milan, Italy
Organization: Amazon Data Services Italy
Open Ports:

80/tcp → nginx

81/tcp → nginx

443/tcp → SSL/TLS (supports TLSv1.2, TLSv1.3; older versions disabled)

Technologies:

Web Server: nginx

## en.fr.holbertonschool.com 
- IP Address: 104.17.201.193 
- Server: Unknown (Shodan access denied)
- Notes: Access denied for IP lookup on free Shodan tier. 

## webflow.holbertonschool.com 
- IP Address: 104.17.201.193 
- Server: Unknown (Shodan access denied)
- Notes: Access denied for IP lookup on free Shodan tier. 

## Summary

- **Total Subdomains Identified:** 20  
- **Common Technologies:** Nginx, WordPress, Cloudflare, Apache  
- **Most Frequently Used IP Providers:** AWS, Cloudflare  
- **CMS/Frameworks Detected:** WordPress, Node.js, PHP  