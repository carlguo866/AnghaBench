
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_pportdata {struct qib_devdata* dd; } ;
struct qib_devdata {int (* f_set_ib_loopback ) (struct qib_pportdata*,char const*) ;} ;
typedef int ssize_t ;


 int stub1 (struct qib_pportdata*,char const*) ;

__attribute__((used)) static ssize_t store_loopback(struct qib_pportdata *ppd, const char *buf,
         size_t count)
{
 struct qib_devdata *dd = ppd->dd;
 int ret = count, r;

 r = dd->f_set_ib_loopback(ppd, buf);
 if (r < 0)
  ret = r;

 return ret;
}
