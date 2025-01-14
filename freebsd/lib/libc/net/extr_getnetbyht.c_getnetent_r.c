
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct netent_data {int dummy; } ;
struct netent {int dummy; } ;
typedef TYPE_1__* res_state ;
struct TYPE_4__ {int res_h_errno; } ;


 int NETDB_INTERNAL ;
 int RES_SET_H_ERRNO (TYPE_1__*,int ) ;
 scalar_t__ __copy_netent (struct netent*,struct netent*,char*,size_t) ;
 struct netent_data* __netent_data_init () ;
 TYPE_1__* __res_state () ;
 scalar_t__ errno ;
 scalar_t__ getnetent_p (struct netent*,struct netent_data*) ;

int
getnetent_r(struct netent *nptr, char *buffer, size_t buflen,
    struct netent **result, int *h_errnop)
{
 struct netent_data *ned;
 struct netent ne;
 res_state statp;

 statp = __res_state();
 if ((ned = __netent_data_init()) == ((void*)0)) {
  RES_SET_H_ERRNO(statp, NETDB_INTERNAL);
  *h_errnop = statp->res_h_errno;
  return (-1);
 }
 if (getnetent_p(&ne, ned) != 0)
  return (-1);
 if (__copy_netent(&ne, nptr, buffer, buflen) != 0) {
  RES_SET_H_ERRNO(statp, NETDB_INTERNAL);
  *h_errnop = statp->res_h_errno;
  return ((errno != 0) ? errno : -1);
 }
 *result = nptr;
 return (0);
}
