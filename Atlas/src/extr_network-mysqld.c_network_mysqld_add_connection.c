
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * srv; } ;
typedef TYPE_1__ network_mysqld_con ;
typedef int chassis ;



void network_mysqld_add_connection(chassis *srv, network_mysqld_con *con) {
 con->srv = srv;





}
