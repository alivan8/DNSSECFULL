$TTL     604800
@        IN        SOA      ns1.alcoymbra.com. admin.alcoymbra.com. (
                                    4       	; Serial
				604800		; Refresh
				 86400		; Retry
			       2419200		; Expire
				604800  )       ; Negative Cache TTL
;


;  name servers - NS records
	IN 	NS	ns1.alcoymbra.com.
;	IN	NS	ns2.alcoymbra.com.


;  name server - A records
ns1.alcoymbra.com.	IN	A	192.168.0.31
;ns2.alcoymbra.com.	IN 	A	192.168.0.32


;  192.168.0.0/24 - A records
server01.alcoymbra.com.	IN	A	192.168.0.31
;host2.alcoymbra.com.	IN	A	192.168.0.32
www.alcoymbra.com.	IN	CNAME	server01.alcoymbra.com.


