
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_13__ {scalar_t__ rc; int member_0; } ;
struct TYPE_12__ {int member_0; } ;
typedef TYPE_1__ Sqlite ;
typedef TYPE_2__ Error ;


 int PTR2INT (void*) ;
 int SQLITE_LOCKED ;
 int clear_error (TYPE_2__*,int ) ;
 int closedb (TYPE_2__*,TYPE_1__*) ;
 int execsql (TYPE_2__*,TYPE_1__*,char*,int*) ;
 int opendb (TYPE_2__*,TYPE_1__*,char*,int ) ;
 int print_and_free_err (TYPE_2__*) ;
 char* sqlite3_mprintf (char*,int,int) ;
 int timetostop (TYPE_2__*) ;

__attribute__((used)) static char *stress_thread_5(int iTid, void *pArg){
  Error err = {0};
  Sqlite db = {0};
  int iArg = PTR2INT(pArg);

  int i1 = 0;
  int i2 = 0;

  opendb(&err, &db, "test.db", 0);
  while( !timetostop(&err) ){
    i64 i = (i1 % 4);
    if( iArg ){
      closedb(&err, &db);
      opendb(&err, &db, "test.db", 0);
    }
    execsql(&err, &db, "DELETE FROM t1 WHERE (rowid % 4)==:i", &i);
    i1++;
    if( err.rc ) i2++;
    clear_error(&err, SQLITE_LOCKED);
  }
  closedb(&err, &db);
  print_and_free_err(&err);
  return sqlite3_mprintf("deleted from t1 %d/%d attempts", i2, i1);
}
