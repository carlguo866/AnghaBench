
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MemoryContextDelete (int ) ;
 int opCtx ;

void
gist_xlog_cleanup(void)
{
 MemoryContextDelete(opCtx);
}
