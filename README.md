# KBS Docker All-in-One Suite
The all-in-one package to run KBS-iDempiere in Docker

# How to Install, Uninstall and Update in Docker Desktop (std)
* Install KBS: 
    * `std-setup.bat|sh` 
* Uninstall KBS: 
    * `std-cleanup.bat|sh`
* Update KBS:
    * `std-update.bat|sh` 

# How to Install, Uninstall and Update in Docker Swarm (pro)
* Prerequirement: KSYS-Cloud
* Install KBS: 
    * `pro-setup.bat|sh` 
* Uninstall KBS: 
    * `pro-cleanup.bat|sh`
* Update KBS:
    * `pro-update.bat|sh` 

## Usage
* KBS webui (SuperUser/System) : 
  * [http://localhost/app](http://localhost/app)

* KBS Server Monitor (SuperUser/System) : 
  * [http://localhost/idempiereMonitor](http://localhost/idempiereMonitor)

* KBS AD Interface Service : 
  * [http://localhost/ADInterface/services](http://localhost/ADInterface/services)

* Felix web console : 
  * In Eclipse (SuperUser/System)
  * [http://localhost/osgi/system/console](http://localhost/osgi/system/console)
  * In Karaf (karaf/karaf) : 
  * [http://localhost/system/console](http://localhost/system/console)

* Portainer (admin/portainer) : 
  * [http://localhost/portainer](http://localhost/portainer)

* Haproxy (admin/haproxy) : 
  * [http://localhost/admin?stats](http://localhost/admin?stats)

* PGWeb (pgweb/pgweb) : 
  * [http://localhost:9090/pgweb](http://localhost:9090/pgweb)
  * [http://localhost/pgweb](http://localhost/pgweb)

* LDAP-phpLdapAdmin (cn=admin,dc=demo,dc=ldap,dc=kylinsystems,dc=com / admin) : 
  * [http://localhost/phpldapadmin](http://localhost/phpldapadmin)

  * docker exec kbs-openldap ldapsearch -x -H ldap://localhost -b dc=demo,dc=ldap,dc=kylinsystems,dc=com -D "cn=admin,dc=demo,dc=ldap,dc=kylinsystems,dc=com" -w admin

* LAM-LDAP Account Manager (admin/admin | master password : lam) : 
  * [http://localhost/lam](http://localhost/lam)

* Hawtio Console (karaf/karaf) :
  * [http://localhost/hawtio](http://localhost/hawtio)

## ToDo
* Integrate extend volume-plugin in Swarm mode : [https://rexray.io/](https://rexray.io/)
