
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int QueryDesc ;


 int PG_END_TRY () ;
 int PG_FINALLY () ;
 int PG_TRY () ;
 int nested_level ;
 int prev_ExecutorFinish (int *) ;
 int standard_ExecutorFinish (int *) ;

__attribute__((used)) static void
pgss_ExecutorFinish(QueryDesc *queryDesc)
{
 nested_level++;
 PG_TRY();
 {
  if (prev_ExecutorFinish)
   prev_ExecutorFinish(queryDesc);
  else
   standard_ExecutorFinish(queryDesc);
 }
 PG_FINALLY();
 {
  nested_level--;
 }
 PG_END_TRY();
}
