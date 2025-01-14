
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int gr_mem; scalar_t__ gr_gid; int gr_passwd; int gr_name; } ;
typedef int nvlist_t ;
typedef scalar_t__ gid_t ;


 int EINVAL ;
 int explicit_bzero (struct group*,int) ;
 int group_unpack_members (int const*,int *,char**,size_t*) ;
 int group_unpack_string (int const*,char*,int *,char**,size_t*) ;
 int nvlist_exists_string (int const*,char*) ;
 scalar_t__ nvlist_get_number (int const*,char*) ;

__attribute__((used)) static int
group_unpack(const nvlist_t *nvl, struct group *grp, char *buffer,
    size_t bufsize)
{
 int error;

 if (!nvlist_exists_string(nvl, "gr_name"))
  return (EINVAL);

 explicit_bzero(grp, sizeof(*grp));

 error = group_unpack_string(nvl, "gr_name", &grp->gr_name, &buffer,
     &bufsize);
 if (error != 0)
  return (error);
 error = group_unpack_string(nvl, "gr_passwd", &grp->gr_passwd, &buffer,
     &bufsize);
 if (error != 0)
  return (error);
 grp->gr_gid = (gid_t)nvlist_get_number(nvl, "gr_gid");
 error = group_unpack_members(nvl, &grp->gr_mem, &buffer, &bufsize);
 if (error != 0)
  return (error);

 return (0);
}
