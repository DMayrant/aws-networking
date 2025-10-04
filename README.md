# aws-networking

The purpose of this project to to understand the proper way to set up an AWS networking by preventing overlapping subnets. 
Overlapping subnets will cause tight coupling, resulting in the loss of scalability, fault tolerance and availability. Subnets that groupped too closely can effect a businesses resource expansion. 

an IP address is distinct numerical label each device gets within a network to exchange data packets. There are 4.3 billion IPv4 address aviable as of today and each IPv4 address can be classified as either public and private. The RFC 1918 is a Internet Engineering Task Force (IETF) document that classifies 3 blocks of private IPv4 IP address. All private resources must be kept far away from the public internet. To connect your AWS cloud to a on-premise datacenter you'll need an AWS Direct Connect for high network bandwith. 

private IPv4 address ranges 

Class A 10.0.0.0 - 10.255.255.255

Class B 172.16.0.0 - 172.31.255.255

Class C 192.168.0.0 - 192.168.255.255

![image alt](https://github.com/DMayrant/aws-networking/blob/main/Blank%20diagram%20copy%202.jpeg?raw=true)
