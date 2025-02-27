
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct mount {int dummy; } ;
struct mac_mls {int dummy; } ;
struct label {int dummy; } ;
struct devfs_dirent {int dummy; } ;
struct cdev {int dummy; } ;


 int MAC_MLS_TYPE_EQUAL ;
 int MAC_MLS_TYPE_HIGH ;
 int MAC_MLS_TYPE_LOW ;
 struct mac_mls* SLOT (struct label*) ;
 char* devtoname (struct cdev*) ;
 int mls_set_effective (struct mac_mls*,int,int ,int *) ;
 scalar_t__ ptys_equal ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int ) ;

__attribute__((used)) static void
mls_devfs_create_device(struct ucred *cred, struct mount *mp,
    struct cdev *dev, struct devfs_dirent *de, struct label *delabel)
{
 struct mac_mls *mm;
 const char *dn;
 int mls_type;

 mm = SLOT(delabel);
 dn = devtoname(dev);
 if (strcmp(dn, "null") == 0 ||
     strcmp(dn, "zero") == 0 ||
     strcmp(dn, "random") == 0 ||
     strncmp(dn, "fd/", strlen("fd/")) == 0)
  mls_type = MAC_MLS_TYPE_EQUAL;
 else if (strcmp(dn, "kmem") == 0 ||
     strcmp(dn, "mem") == 0)
  mls_type = MAC_MLS_TYPE_HIGH;
 else if (ptys_equal &&
     (strncmp(dn, "ttyp", strlen("ttyp")) == 0 ||
     strncmp(dn, "pts/", strlen("pts/")) == 0 ||
     strncmp(dn, "ptyp", strlen("ptyp")) == 0))
  mls_type = MAC_MLS_TYPE_EQUAL;
 else
  mls_type = MAC_MLS_TYPE_LOW;
 mls_set_effective(mm, mls_type, 0, ((void*)0));
}
