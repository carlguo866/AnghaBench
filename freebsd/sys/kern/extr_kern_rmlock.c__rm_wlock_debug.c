
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmlock {int dummy; } ;


 int _rm_wlock (struct rmlock*) ;

void
_rm_wlock_debug(struct rmlock *rm, const char *file, int line)
{

 _rm_wlock(rm);
}
