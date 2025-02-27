
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int szTest; int pStmt; int zNN; } ;


 int SQLITE_STATIC ;
 TYPE_1__ g ;
 int isTemp (int) ;
 int speedtest1_begin_test (int,char*,...) ;
 int speedtest1_end_test () ;
 int speedtest1_exec (char*,...) ;
 int speedtest1_prepare (char*,...) ;
 int speedtest1_random_ascii_fp (char*) ;
 int speedtest1_run () ;
 int sqlite3_bind_text (int ,int,char*,int,int ) ;

void testset_fp(void){
  int n;
  int i;
  char zFP1[100];
  char zFP2[100];

  n = g.szTest*5000;
  speedtest1_begin_test(100, "Fill a table with %d FP values", n*2);
  speedtest1_exec("BEGIN");
  speedtest1_exec("CREATE%s TABLE t1(a REAL %s, b REAL %s);",
                  isTemp(1), g.zNN, g.zNN);
  speedtest1_prepare("INSERT INTO t1 VALUES(?1,?2); -- %d times", n);
  for(i=1; i<=n; i++){
    speedtest1_random_ascii_fp(zFP1);
    speedtest1_random_ascii_fp(zFP2);
    sqlite3_bind_text(g.pStmt, 1, zFP1, -1, SQLITE_STATIC);
    sqlite3_bind_text(g.pStmt, 2, zFP2, -1, SQLITE_STATIC);
    speedtest1_run();
  }
  speedtest1_exec("COMMIT");
  speedtest1_end_test();

  n = g.szTest/25 + 2;
  speedtest1_begin_test(110, "%d range queries", n);
  speedtest1_prepare("SELECT sum(b) FROM t1 WHERE a BETWEEN ?1 AND ?2");
  for(i=1; i<=n; i++){
    speedtest1_random_ascii_fp(zFP1);
    speedtest1_random_ascii_fp(zFP2);
    sqlite3_bind_text(g.pStmt, 1, zFP1, -1, SQLITE_STATIC);
    sqlite3_bind_text(g.pStmt, 2, zFP2, -1, SQLITE_STATIC);
    speedtest1_run();
  }
  speedtest1_end_test();

  speedtest1_begin_test(120, "CREATE INDEX three times");
  speedtest1_exec("BEGIN;");
  speedtest1_exec("CREATE INDEX t1a ON t1(a);");
  speedtest1_exec("CREATE INDEX t1b ON t1(b);");
  speedtest1_exec("CREATE INDEX t1ab ON t1(a,b);");
  speedtest1_exec("COMMIT;");
  speedtest1_end_test();

  n = g.szTest/3 + 2;
  speedtest1_begin_test(130, "%d indexed range queries", n);
  speedtest1_prepare("SELECT sum(b) FROM t1 WHERE a BETWEEN ?1 AND ?2");
  for(i=1; i<=n; i++){
    speedtest1_random_ascii_fp(zFP1);
    speedtest1_random_ascii_fp(zFP2);
    sqlite3_bind_text(g.pStmt, 1, zFP1, -1, SQLITE_STATIC);
    sqlite3_bind_text(g.pStmt, 2, zFP2, -1, SQLITE_STATIC);
    speedtest1_run();
  }
  speedtest1_end_test();
}
