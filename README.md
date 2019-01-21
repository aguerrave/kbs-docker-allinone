# KBS Docker All-in-One Suite
The all-in-one package to run KBS-iDempiere in Docker

# How to Install, Uninstall and Update
* Install KBS: 
    * `kbs-setup.bat|sh`
* Uninstall KBS: 
    * `kbs-cleanup.bat|sh`
* Update KBS:
    * `kbs-update.bat|sh` 

## Usage
* KBS webui (SuperUser/System) : 
  * [http://localhost/app](http://localhost/app)

* KBS Server Monitor (SuperUser/System) : 
  * [http://localhost/idempiereMonitor](http://localhost/idempiereMonitor)

* KBS AD Interface Service : 
  * [http://localhost/ADInterface/services](http://localhost/ADInterface/services)

* Portainer (admin/portainer) : 
  * [http://localhost/portainer](http://localhost/portainer)

* Haproxy (admin/haproxy) : 
  * [http://localhost/admin?stats](http://localhost/admin?stats)

* PGWeb (pgweb/pgweb) : 
  * [http://localhost/pgweb](http://localhost/pgweb)

* LDAP-phpLdapAdmin (cn=admin,dc=demo,dc=ldap,dc=kylinsystems,dc=com / admin) : 
  * [http://localhost/phpldapadmin](http://localhost/phpldapadmin)

  * docker exec kbs-openldap ldapsearch -x -H ldap://localhost -b dc=demo,dc=ldap,dc=kylinsystems,dc=com -D "cn=admin,dc=demo,dc=ldap,dc=kylinsystems,dc=com" -w admin

* LAM-LDAP Account Manager (admin/admin | master password : lam) : 
  * [http://localhost/lam](http://localhost/lam)

* Felix web console (SuperUser/System) : 
  * [http://localhost/osgi/system/console](http://localhost/osgi/system/console)

* Karaf web console (karaf/karaf) : 
  * [http://localhost/system/console](http://localhost/system/console)

* Hawtio Console (karaf/karaf) :
  * [http://localhost/hawtio](http://localhost/hawtio)

## #ToDo
* Integrate extend volume-plugin in Swarm mode : [https://rexray.io/](https://rexray.io/)
* Setup SSL in Haproxy
