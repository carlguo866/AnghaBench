
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kperf_reset () ;

__attribute__((used)) static void
reset_ktrace(void)
{
 kperf_reset();
}
