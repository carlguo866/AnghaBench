
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



int nlm_cms_get_net_error_code(uint64_t err)
{
 return ((err >> 12) & 0xf);
}
