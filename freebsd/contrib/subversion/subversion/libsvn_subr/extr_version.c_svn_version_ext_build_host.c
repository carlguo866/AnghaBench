
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* build_host; } ;
typedef TYPE_1__ svn_version_extended_t ;



const char *
svn_version_ext_build_host(const svn_version_extended_t *ext_info)
{
  return ext_info->build_host;
}
