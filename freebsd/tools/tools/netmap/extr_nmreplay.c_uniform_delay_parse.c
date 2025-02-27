
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct _qs {int dummy; } ;
struct _cfg {scalar_t__* d; } ;


 int D (char*,long long,long long) ;
 scalar_t__ U_PARSE_ERR ;
 scalar_t__ parse_time (char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
uniform_delay_parse(struct _qs *q, struct _cfg *dst, int ac, char *av[])
{
 uint64_t dmin, dmax;

 (void)q;
 if (strcmp(av[0], "uniform") != 0)
  return 2;
 if (ac != 3)
  return 1;
 dmin = parse_time(av[1]);
 dmax = parse_time(av[2]);
 if (dmin == U_PARSE_ERR || dmax == U_PARSE_ERR || dmin > dmax)
  return 1;
 D("dmin %lld dmax %lld", (long long)dmin, (long long)dmax);
 dst->d[0] = dmin;
 dst->d[1] = dmax;
 dst->d[2] = dmax - dmin;
 return 0;
}
