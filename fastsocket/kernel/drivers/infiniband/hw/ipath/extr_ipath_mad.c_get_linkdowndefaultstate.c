
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_devdata {int ipath_ibcctrl; } ;


 int INFINIPATH_IBCC_LINKDOWNDEFAULTSTATE ;

__attribute__((used)) static int get_linkdowndefaultstate(struct ipath_devdata *dd)
{
 return !!(dd->ipath_ibcctrl & INFINIPATH_IBCC_LINKDOWNDEFAULTSTATE);
}
