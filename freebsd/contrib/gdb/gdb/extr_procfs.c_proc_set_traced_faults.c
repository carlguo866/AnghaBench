
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tid; scalar_t__ status_valid; int ctl_fd; int pid; } ;
typedef TYPE_1__ procinfo ;
typedef int procfs_ctl_t ;
typedef int fltset_t ;
typedef int arg ;


 int PCSFAULT ;
 int PIOCSFAULT ;
 TYPE_1__* find_procinfo_or_die (int ,int ) ;
 scalar_t__ ioctl (int ,int ,int *) ;
 int memcpy (char**,char*,int) ;
 int write (int ,char*,int) ;

int
proc_set_traced_faults (procinfo *pi, fltset_t *fltset)
{
  int win;
  if (pi->tid != 0)
    pi = find_procinfo_or_die (pi->pid, 0);
  win = (ioctl (pi->ctl_fd, PIOCSFAULT, fltset) >= 0);


  pi->status_valid = 0;

  return win;
}
