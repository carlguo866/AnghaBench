
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vtype_t ;
typedef int uint16_t ;


 int ACE_DIRECTORY_INHERIT_ACE ;
 int ACE_FILE_INHERIT_ACE ;
 int ACE_NO_PROPAGATE_INHERIT_ACE ;
 scalar_t__ VDIR ;

__attribute__((used)) static int
zfs_ace_can_use(vtype_t vtype, uint16_t acep_flags)
{
 int iflags = (acep_flags & 0xf);

 if ((vtype == VDIR) && (iflags & ACE_DIRECTORY_INHERIT_ACE))
  return (1);
 else if (iflags & ACE_FILE_INHERIT_ACE)
  return (!((vtype == VDIR) &&
      (iflags & ACE_NO_PROPAGATE_INHERIT_ACE)));
 return (0);
}
