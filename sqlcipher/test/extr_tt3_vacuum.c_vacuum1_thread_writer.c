
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ i64 ;
struct TYPE_13__ {int member_0; } ;
struct TYPE_12__ {int member_0; } ;
typedef TYPE_1__ Sqlite ;
typedef TYPE_2__ Error ;


 int SQLITE_LOCKED ;
 int clear_error (TYPE_2__*,int ) ;
 int closedb (TYPE_2__*,TYPE_1__*) ;
 int execsql (TYPE_2__*,TYPE_1__*,char*,...) ;
 int opendb (TYPE_2__*,TYPE_1__*,char*,int ) ;
 int print_and_free_err (TYPE_2__*) ;
 char* sqlite3_mprintf (char*) ;
 int timetostop (TYPE_2__*) ;

__attribute__((used)) static char *vacuum1_thread_writer(int iTid, void *pArg){
  Error err = {0};
  Sqlite db = {0};
  opendb(&err, &db, "test.db", 0);
  i64 i = 0;

  while( !timetostop(&err) ){
    i++;


    execsql(&err, &db,
        "WITH loop(i) AS (SELECT 1 UNION ALL SELECT i+1 FROM loop WHERE i<100) "
        "INSERT INTO t1 SELECT randomblob(50), randomblob(2500) FROM loop"
    );


    execsql(&err, &db, "DELETE FROM t1 WHERE rowid = :i", &i);
    clear_error(&err, SQLITE_LOCKED);


    execsql(&err, &db, "SELECT * FROM t1 ORDER BY x");
    clear_error(&err, SQLITE_LOCKED);
  }

  closedb(&err, &db);
  print_and_free_err(&err);
  return sqlite3_mprintf("ok");
}
