
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int dummy; } ;
typedef int cap_channel_t ;


 int cap_getgrcommon_r (int *,char*,int *,int ,struct group*,char*,size_t,struct group**) ;

int
cap_getgrent_r(cap_channel_t *chan, struct group *grp, char *buffer,
    size_t bufsize, struct group **result)
{

 return (cap_getgrcommon_r(chan, "getgrent_r", ((void*)0), 0, grp, buffer,
     bufsize, result));
}
