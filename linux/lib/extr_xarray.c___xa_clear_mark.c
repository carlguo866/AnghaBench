
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xa_mark_t ;
struct xarray {int dummy; } ;


 int XA_STATE (int ,struct xarray*,unsigned long) ;
 int xas ;
 int xas_clear_mark (int *,int ) ;
 void* xas_load (int *) ;

void __xa_clear_mark(struct xarray *xa, unsigned long index, xa_mark_t mark)
{
 XA_STATE(xas, xa, index);
 void *entry = xas_load(&xas);

 if (entry)
  xas_clear_mark(&xas, mark);
}
