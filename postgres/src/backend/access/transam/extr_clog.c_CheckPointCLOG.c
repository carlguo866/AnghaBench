
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ClogCtl ;
 int SimpleLruFlush (int ,int) ;
 int TRACE_POSTGRESQL_CLOG_CHECKPOINT_DONE (int) ;
 int TRACE_POSTGRESQL_CLOG_CHECKPOINT_START (int) ;
 int fsync_fname (char*,int) ;

void
CheckPointCLOG(void)
{

 TRACE_POSTGRESQL_CLOG_CHECKPOINT_START(1);
 SimpleLruFlush(ClogCtl, 1);





 fsync_fname("pg_xact", 1);

 TRACE_POSTGRESQL_CLOG_CHECKPOINT_DONE(1);
}
