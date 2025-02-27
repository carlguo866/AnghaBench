
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int lock; } ;


 int EINVAL ;
 int ENOSPC ;
 int INT_MAX ;
 int MA_OWNED ;
 int idr_get_new_above_locked (struct idr*,void*,int,int*) ;
 int idr_get_new_locked (struct idr*,void*,int*) ;
 int idr_remove_locked (struct idr*,int) ;
 int mtx_assert (int *,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
idr_alloc_locked(struct idr *idr, void *ptr, int start, int end)
{
 int max = end > 0 ? end - 1 : INT_MAX;
 int error;
 int id;

 mtx_assert(&idr->lock, MA_OWNED);

 if (unlikely(start < 0))
  return (-EINVAL);
 if (unlikely(max < start))
  return (-ENOSPC);

 if (start == 0)
  error = idr_get_new_locked(idr, ptr, &id);
 else
  error = idr_get_new_above_locked(idr, ptr, start, &id);

 if (unlikely(error < 0))
  return (error);
 if (unlikely(id > max)) {
  idr_remove_locked(idr, id);
  return (-ENOSPC);
 }
 return (id);
}
