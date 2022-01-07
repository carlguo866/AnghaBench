
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int user; } ;
typedef int PGresult ;
typedef int PGconn ;
typedef int ClusterInfo ;


 int BOOTSTRAP_SUPERUSERID ;
 int PQclear (int *) ;
 int PQfinish (int *) ;
 int PQgetvalue (int *,int ,int) ;
 int PQntuples (int *) ;
 int atooid (int ) ;
 int check_ok () ;
 int * connectToServer (int *,char*) ;
 int * executeQueryOrDie (int *,char*) ;
 int new_cluster ;
 TYPE_1__ os_info ;
 int pg_fatal (char*,...) ;
 int prep_status (char*) ;

__attribute__((used)) static void
check_is_install_user(ClusterInfo *cluster)
{
 PGresult *res;
 PGconn *conn = connectToServer(cluster, "template1");

 prep_status("Checking database user is the install user");


 res = executeQueryOrDie(conn,
       "SELECT rolsuper, oid "
       "FROM pg_catalog.pg_roles "
       "WHERE rolname = current_user "
       "AND rolname !~ '^pg_'");






 if (PQntuples(res) != 1 ||
  atooid(PQgetvalue(res, 0, 1)) != BOOTSTRAP_SUPERUSERID)
  pg_fatal("database user \"%s\" is not the install user\n",
     os_info.user);

 PQclear(res);

 res = executeQueryOrDie(conn,
       "SELECT COUNT(*) "
       "FROM pg_catalog.pg_roles "
       "WHERE rolname !~ '^pg_'");

 if (PQntuples(res) != 1)
  pg_fatal("could not determine the number of users\n");






 if (cluster == &new_cluster && atooid(PQgetvalue(res, 0, 0)) != 1)
  pg_fatal("Only the install user can be defined in the new cluster.\n");

 PQclear(res);

 PQfinish(conn);

 check_ok();
}
