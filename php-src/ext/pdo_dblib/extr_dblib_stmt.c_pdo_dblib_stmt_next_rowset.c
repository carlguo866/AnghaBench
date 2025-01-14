
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int dbh; scalar_t__ driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_8__ {TYPE_3__* H; } ;
typedef TYPE_2__ pdo_dblib_stmt ;
struct TYPE_9__ {int link; } ;
typedef TYPE_3__ pdo_dblib_db_handle ;
typedef scalar_t__ RETCODE ;


 scalar_t__ FAIL ;
 scalar_t__ NO_MORE_ROWS ;
 scalar_t__ SUCCESS ;
 scalar_t__ dbnextrow (int ) ;
 int pdo_dblib_stmt_next_rowset_no_cancel (TYPE_1__*) ;
 int pdo_raise_impl_error (int ,TYPE_1__*,char*,char*) ;

__attribute__((used)) static int pdo_dblib_stmt_next_rowset(pdo_stmt_t *stmt)
{
 pdo_dblib_stmt *S = (pdo_dblib_stmt*)stmt->driver_data;
 pdo_dblib_db_handle *H = S->H;
 RETCODE ret = SUCCESS;




 while (NO_MORE_ROWS != ret) {
  ret = dbnextrow(H->link);

  if (FAIL == ret) {
   pdo_raise_impl_error(stmt->dbh, stmt, "HY000", "PDO_DBLIB: dbnextrow() returned FAIL");
   return 0;
  }
 }

 return pdo_dblib_stmt_next_rowset_no_cancel(stmt);
}
