
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_sb; } ;
struct seq_file {int dummy; } ;
struct adfs_sb_info {scalar_t__ s_uid; scalar_t__ s_gid; scalar_t__ s_owner_mask; scalar_t__ s_other_mask; } ;


 scalar_t__ ADFS_DEFAULT_OTHER_MASK ;
 scalar_t__ ADFS_DEFAULT_OWNER_MASK ;
 struct adfs_sb_info* ADFS_SB (int ) ;
 int seq_printf (struct seq_file*,char*,scalar_t__) ;

__attribute__((used)) static int adfs_show_options(struct seq_file *seq, struct vfsmount *mnt)
{
 struct adfs_sb_info *asb = ADFS_SB(mnt->mnt_sb);

 if (asb->s_uid != 0)
  seq_printf(seq, ",uid=%u", asb->s_uid);
 if (asb->s_gid != 0)
  seq_printf(seq, ",gid=%u", asb->s_gid);
 if (asb->s_owner_mask != ADFS_DEFAULT_OWNER_MASK)
  seq_printf(seq, ",ownmask=%o", asb->s_owner_mask);
 if (asb->s_other_mask != ADFS_DEFAULT_OTHER_MASK)
  seq_printf(seq, ",othmask=%o", asb->s_other_mask);

 return 0;
}
