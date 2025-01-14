
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t ulong_t ;
struct TYPE_3__ {size_t str_nbufs; size_t str_ptr; size_t* str_bufs; size_t str_bufsz; scalar_t__ str_size; } ;
typedef TYPE_1__ strtab_t ;
typedef scalar_t__ ssize_t ;



ssize_t
strtab_write(const strtab_t *sp,
    ssize_t (*func)(void *, size_t, void *), void *priv)
{
 ssize_t res, total = 0;
 ulong_t i;
 size_t n;

 for (i = 0; i < sp->str_nbufs; i++, total += res) {
  if (i == sp->str_nbufs - 1)
   n = sp->str_ptr - sp->str_bufs[i];
  else
   n = sp->str_bufsz;

  if ((res = func(sp->str_bufs[i], n, priv)) <= 0)
   break;
 }

 if (total == 0 && sp->str_size != 0)
  return (-1);

 return (total);
}
