
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int qcmp_mru_addr (void const*,void const*) ;

__attribute__((used)) static int
qcmp_mru_r_addr(
 const void *v1,
 const void *v2
 )
{
 return -qcmp_mru_addr(v1, v2);
}
