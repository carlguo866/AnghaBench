
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strncasecmp (char const*,char*,int) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int
isanyarg(const char *arg)
{
 return (strncmp(arg, "-", 1) == 0 ||
     strncasecmp(arg, "any", 3) == 0 || strncasecmp(arg, "off", 3) == 0);
}
