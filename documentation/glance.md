Description
===========
The following roles are used in the deployment of the OpenStack Image Service **Glance** as part of the OpenStack **Essex** reference deployment using Chef.

Dependency Roles
================

base
----
Every Glance role depends on the `base` role included in the repository to ensure essential services (ntp, openssh, etc.).

mysql-master
------------
roles and underlying recipes providing database services through MySQL required for glance (and Keystone, Nova and Horizon).

rabbitmq-server
---------------
roles and underlying recipes providing messaging services through RabbitMQ required for Glance (and Nova).

os-database
-----------
expose and provide the attributes used for configuring glance's database.

os-network
----------
expose and provide the attributes used for configuring and defining glance's network.

Glance Roles
============

glance-api
----------


glance-registry
---------------
