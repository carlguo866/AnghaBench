
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int atomic_store (int *,int ) ;
 int enabled ;

__attribute__((used)) static void
enable_all_test_mtx_stats(void)
{
 atomic_store(&enabled, TRUE);
}
