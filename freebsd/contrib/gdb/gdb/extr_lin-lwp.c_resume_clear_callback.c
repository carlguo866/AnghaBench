
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwp_info {scalar_t__ resumed; } ;



__attribute__((used)) static int
resume_clear_callback (struct lwp_info *lp, void *data)
{
  lp->resumed = 0;
  return 0;
}
