
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int uint32 ;
typedef int XLogRecPtr ;


 int pg_fatal (char*,char*) ;
 int pg_free (char*) ;
 char* run_simple_query (char*) ;
 int sscanf (char*,char*,int*,int*) ;

XLogRecPtr
libpqGetCurrentXlogInsertLocation(void)
{
 XLogRecPtr result;
 uint32 hi;
 uint32 lo;
 char *val;

 val = run_simple_query("SELECT pg_current_wal_insert_lsn()");

 if (sscanf(val, "%X/%X", &hi, &lo) != 2)
  pg_fatal("unrecognized result \"%s\" for current WAL insert location", val);

 result = ((uint64) hi) << 32 | lo;

 pg_free(val);

 return result;
}
