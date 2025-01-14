
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


union dinodep {TYPE_2__* dp2; TYPE_1__* dp1; } ;
typedef scalar_t__ off_t ;
typedef int ino_t ;
struct TYPE_11__ {int d_error; } ;
struct TYPE_10__ {scalar_t__ fs_magic; } ;
struct TYPE_9__ {scalar_t__* di_db; scalar_t__ di_size; } ;
struct TYPE_8__ {scalar_t__* di_db; scalar_t__ di_size; } ;


 scalar_t__ FS_UFS1_MAGIC ;
 int UFS_NDADDR ;
 int UFS_ROOTINO ;
 int dir_search (scalar_t__,int ) ;
 TYPE_6__ disk ;
 scalar_t__ getinode (TYPE_6__*,union dinodep*,int ) ;
 scalar_t__ lblktosize (TYPE_3__*,int) ;
 int sblksize (TYPE_3__*,scalar_t__,int) ;
 TYPE_3__ sblock ;
 int warn (char*,int ) ;
 int warnx (char*) ;

__attribute__((used)) static ino_t
journal_findfile(void)
{
 union dinodep dp;
 ino_t ino;
 int i;

 if (getinode(&disk, &dp, UFS_ROOTINO) != 0) {
  warn("Failed to get root inode: %s", disk.d_error);
  return (-1);
 }
 if (sblock.fs_magic == FS_UFS1_MAGIC) {
  if ((off_t)dp.dp1->di_size >= lblktosize(&sblock, UFS_NDADDR)) {
   warnx("UFS_ROOTINO extends beyond direct blocks.");
   return (-1);
  }
  for (i = 0; i < UFS_NDADDR; i++) {
   if (dp.dp1->di_db[i] == 0)
    break;
   if ((ino = dir_search(dp.dp1->di_db[i],
       sblksize(&sblock, (off_t)dp.dp1->di_size, i))) != 0)
    return (ino);
  }
 } else {
  if ((off_t)dp.dp2->di_size >= lblktosize(&sblock, UFS_NDADDR)) {
   warnx("UFS_ROOTINO extends beyond direct blocks.");
   return (-1);
  }
  for (i = 0; i < UFS_NDADDR; i++) {
   if (dp.dp2->di_db[i] == 0)
    break;
   if ((ino = dir_search(dp.dp2->di_db[i],
       sblksize(&sblock, (off_t)dp.dp2->di_size, i))) != 0)
    return (ino);
  }
 }

 return (0);
}
