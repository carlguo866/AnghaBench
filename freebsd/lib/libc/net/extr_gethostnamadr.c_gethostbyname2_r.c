
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct hostent {int dummy; } ;
typedef TYPE_1__* res_state ;
struct TYPE_6__ {int options; } ;


 int NETDB_INTERNAL ;
 int RES_INIT ;
 int RES_SET_H_ERRNO (TYPE_1__*,int ) ;
 TYPE_1__* __res_state () ;
 int gethostbyname_internal (char const*,int,struct hostent*,char*,size_t,struct hostent**,int*,TYPE_1__*) ;
 int res_ninit (TYPE_1__*) ;

int
gethostbyname2_r(const char *name, int af, struct hostent *he, char *buffer,
    size_t buflen, struct hostent **result, int *h_errnop)
{
 res_state statp;

 statp = __res_state();
 if ((statp->options & RES_INIT) == 0 && res_ninit(statp) == -1) {
  RES_SET_H_ERRNO(statp, NETDB_INTERNAL);
  return (-1);
 }
 return (gethostbyname_internal(name, af, he, buffer, buflen, result,
     h_errnop, statp));
}
