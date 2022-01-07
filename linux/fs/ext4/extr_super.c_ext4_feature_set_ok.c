
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int s_flags; } ;
struct TYPE_4__ {TYPE_1__* s_es; } ;
struct TYPE_3__ {int s_feature_ro_compat; int s_feature_incompat; } ;


 int EXT4_FEATURE_INCOMPAT_SUPP ;
 int EXT4_FEATURE_RO_COMPAT_SUPP ;
 TYPE_2__* EXT4_SB (struct super_block*) ;
 int KERN_ERR ;
 int KERN_INFO ;
 int SB_RDONLY ;
 scalar_t__ ext4_has_feature_bigalloc (struct super_block*) ;
 scalar_t__ ext4_has_feature_casefold (struct super_block*) ;
 int ext4_has_feature_extents (struct super_block*) ;
 scalar_t__ ext4_has_feature_project (struct super_block*) ;
 scalar_t__ ext4_has_feature_quota (struct super_block*) ;
 scalar_t__ ext4_has_feature_readonly (struct super_block*) ;
 scalar_t__ ext4_has_unknown_ext4_incompat_features (struct super_block*) ;
 scalar_t__ ext4_has_unknown_ext4_ro_compat_features (struct super_block*) ;
 int ext4_msg (struct super_block*,int ,char*,...) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int ext4_feature_set_ok(struct super_block *sb, int readonly)
{
 if (ext4_has_unknown_ext4_incompat_features(sb)) {
  ext4_msg(sb, KERN_ERR,
   "Couldn't mount because of "
   "unsupported optional features (%x)",
   (le32_to_cpu(EXT4_SB(sb)->s_es->s_feature_incompat) &
   ~EXT4_FEATURE_INCOMPAT_SUPP));
  return 0;
 }


 if (ext4_has_feature_casefold(sb)) {
  ext4_msg(sb, KERN_ERR,
    "Filesystem with casefold feature cannot be "
    "mounted without CONFIG_UNICODE");
  return 0;
 }


 if (readonly)
  return 1;

 if (ext4_has_feature_readonly(sb)) {
  ext4_msg(sb, KERN_INFO, "filesystem is read-only");
  sb->s_flags |= SB_RDONLY;
  return 1;
 }


 if (ext4_has_unknown_ext4_ro_compat_features(sb)) {
  ext4_msg(sb, KERN_ERR, "couldn't mount RDWR because of "
    "unsupported optional features (%x)",
    (le32_to_cpu(EXT4_SB(sb)->s_es->s_feature_ro_compat) &
    ~EXT4_FEATURE_RO_COMPAT_SUPP));
  return 0;
 }
 if (ext4_has_feature_bigalloc(sb) && !ext4_has_feature_extents(sb)) {
  ext4_msg(sb, KERN_ERR,
    "Can't support bigalloc feature without "
    "extents feature\n");
  return 0;
 }


 if (ext4_has_feature_quota(sb) && !readonly) {
  ext4_msg(sb, KERN_ERR,
    "Filesystem with quota feature cannot be mounted RDWR "
    "without CONFIG_QUOTA");
  return 0;
 }
 if (ext4_has_feature_project(sb) && !readonly) {
  ext4_msg(sb, KERN_ERR,
    "Filesystem with project quota feature cannot be mounted RDWR "
    "without CONFIG_QUOTA");
  return 0;
 }

 return 1;
}
