
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_qp {int dummy; } ;
struct ib_mw_bind {int dummy; } ;
struct ib_mw {int dummy; } ;


 int ENOSYS ;

int c4iw_bind_mw(struct ib_qp *qp, struct ib_mw *mw, struct ib_mw_bind *mw_bind)
{
 return -ENOSYS;
}
