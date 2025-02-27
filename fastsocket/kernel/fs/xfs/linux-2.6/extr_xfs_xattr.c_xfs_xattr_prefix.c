
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {char const* prefix; } ;
struct TYPE_5__ {char const* prefix; } ;
struct TYPE_4__ {char const* prefix; } ;


 int XFS_ATTR_ROOT ;
 int XFS_ATTR_SECURE ;
 TYPE_3__ xfs_xattr_security_handler ;
 TYPE_2__ xfs_xattr_trusted_handler ;
 TYPE_1__ xfs_xattr_user_handler ;

__attribute__((used)) static const char *xfs_xattr_prefix(int flags)
{
 if (flags & XFS_ATTR_SECURE)
  return xfs_xattr_security_handler.prefix;
 else if (flags & XFS_ATTR_ROOT)
  return xfs_xattr_trusted_handler.prefix;
 else
  return xfs_xattr_user_handler.prefix;
}
