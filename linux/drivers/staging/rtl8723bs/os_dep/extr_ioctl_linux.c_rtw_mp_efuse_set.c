
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;



__attribute__((used)) static int rtw_mp_efuse_set(struct net_device *dev,
   struct iw_request_info *info,
   union iwreq_data *wdata, char *extra)
{
 int err = 0;
 return err;
}
