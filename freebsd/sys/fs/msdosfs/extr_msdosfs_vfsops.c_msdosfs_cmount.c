
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct msdosfs_args {int flags; int cs_local; int cs_dos; int cs_win; int dirmask; int mask; int gid; int uid; int fspec; int export; } ;
struct mntarg {int dummy; } ;
struct export_args {int dummy; } ;
typedef int exp ;


 int EINVAL ;
 int MAXCSLEN ;
 int MAXPATHLEN ;
 int MSDOSFSMNT_KICONV ;
 int MSDOSFSMNT_LONGNAME ;
 int MSDOSFSMNT_NOWIN95 ;
 int MSDOSFSMNT_SHORTNAME ;
 int copyin (void*,struct msdosfs_args*,int) ;
 int kernel_mount (struct mntarg*,int ) ;
 struct mntarg* mount_arg (struct mntarg*,char*,struct export_args*,int) ;
 struct mntarg* mount_argb (struct mntarg*,int,char*) ;
 struct mntarg* mount_argf (struct mntarg*,char*,char*,int ) ;
 struct mntarg* mount_argsu (struct mntarg*,char*,int ,int ) ;
 int vfs_oexport_conv (int *,struct export_args*) ;

__attribute__((used)) static int
msdosfs_cmount(struct mntarg *ma, void *data, uint64_t flags)
{
 struct msdosfs_args args;
 struct export_args exp;
 int error;

 if (data == ((void*)0))
  return (EINVAL);
 error = copyin(data, &args, sizeof args);
 if (error)
  return (error);
 vfs_oexport_conv(&args.export, &exp);

 ma = mount_argsu(ma, "from", args.fspec, MAXPATHLEN);
 ma = mount_arg(ma, "export", &exp, sizeof(exp));
 ma = mount_argf(ma, "uid", "%d", args.uid);
 ma = mount_argf(ma, "gid", "%d", args.gid);
 ma = mount_argf(ma, "mask", "%d", args.mask);
 ma = mount_argf(ma, "dirmask", "%d", args.dirmask);

 ma = mount_argb(ma, args.flags & MSDOSFSMNT_SHORTNAME, "noshortname");
 ma = mount_argb(ma, args.flags & MSDOSFSMNT_LONGNAME, "nolongname");
 ma = mount_argb(ma, !(args.flags & MSDOSFSMNT_NOWIN95), "nowin95");
 ma = mount_argb(ma, args.flags & MSDOSFSMNT_KICONV, "nokiconv");

 ma = mount_argsu(ma, "cs_win", args.cs_win, MAXCSLEN);
 ma = mount_argsu(ma, "cs_dos", args.cs_dos, MAXCSLEN);
 ma = mount_argsu(ma, "cs_local", args.cs_local, MAXCSLEN);

 error = kernel_mount(ma, flags);

 return (error);
}
