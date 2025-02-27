
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_table {int dummy; } ;
struct pfioc_table {int pfrio_flags; int pfrio_esize; int pfrio_size; int pfrio_nadd; struct pfr_table* pfrio_buffer; } ;


 int DIOCRADDTABLES ;
 int EINVAL ;
 int bzero (struct pfioc_table*,int) ;
 int dev ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct pfioc_table*) ;

int
pfr_add_tables(struct pfr_table *tbl, int size, int *nadd, int flags)
{
 struct pfioc_table io;

 if (size < 0 || (size && tbl == ((void*)0))) {
  errno = EINVAL;
  return (-1);
 }
 bzero(&io, sizeof io);
 io.pfrio_flags = flags;
 io.pfrio_buffer = tbl;
 io.pfrio_esize = sizeof(*tbl);
 io.pfrio_size = size;
 if (ioctl(dev, DIOCRADDTABLES, &io))
  return (-1);
 if (nadd != ((void*)0))
  *nadd = io.pfrio_nadd;
 return (0);
}
