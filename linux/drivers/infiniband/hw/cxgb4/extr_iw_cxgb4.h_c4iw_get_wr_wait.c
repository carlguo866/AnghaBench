
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c4iw_wr_wait {int kref; } ;


 int WARN_ON (int) ;
 int kref_get (int *) ;
 scalar_t__ kref_read (int *) ;
 int pr_debug (char*,struct c4iw_wr_wait*,scalar_t__) ;

__attribute__((used)) static inline void c4iw_get_wr_wait(struct c4iw_wr_wait *wr_waitp)
{
 pr_debug("wr_wait %p ref before get %u\n", wr_waitp,
   kref_read(&wr_waitp->kref));
 WARN_ON(kref_read(&wr_waitp->kref) == 0);
 kref_get(&wr_waitp->kref);
}
