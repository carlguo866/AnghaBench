
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fs {char* fs_volname; int fs_flags; int fs_maxcontig; int fs_bsize; int fs_maxbsize; int fs_maxbpg; int fs_fsize; int fs_avgfilesize; int fs_avgfpdir; int fs_ipg; int fs_minfree; int fs_optim; int fs_size; int fs_metaspace; int fs_fpg; } ;
typedef int intmax_t ;
struct TYPE_2__ {char* d_name; int d_ufs; struct fs d_fs; } ;


 int FS_DOSOFTDEP ;
 int FS_GJOURNAL ;
 int FS_MULTILABEL ;


 int FS_SUJ ;
 int FS_TRIM ;
 TYPE_1__ disk ;
 int fragroundup (struct fs*,int) ;
 int fragstoblks (struct fs*,int ) ;
 scalar_t__ fsbtodb (struct fs*,int ) ;
 int lblktosize (struct fs*,int ) ;
 int printf (char*,...) ;

__attribute__((used)) static int
marshal(const char *name)
{
 struct fs *fs;

 fs = &disk.d_fs;

 printf("# newfs command for %s (%s)\n", name, disk.d_name);
 printf("newfs ");
 if (fs->fs_volname[0] != '\0')
  printf("-L %s ", fs->fs_volname);
 printf("-O %d ", disk.d_ufs);
 if (fs->fs_flags & FS_DOSOFTDEP)
  printf("-U ");
 printf("-a %d ", fs->fs_maxcontig);
 printf("-b %d ", fs->fs_bsize);

 printf("-d %d ", fs->fs_maxbsize);
 printf("-e %d ", fs->fs_maxbpg);
 printf("-f %d ", fs->fs_fsize);
 printf("-g %d ", fs->fs_avgfilesize);
 printf("-h %d ", fs->fs_avgfpdir);
 printf("-i %jd ", fragroundup(fs, lblktosize(fs, fragstoblks(fs,
     fs->fs_fpg)) / fs->fs_ipg));
 if (fs->fs_flags & FS_SUJ)
  printf("-j ");
 if (fs->fs_flags & FS_GJOURNAL)
  printf("-J ");
 printf("-k %jd ", fs->fs_metaspace);
 if (fs->fs_flags & FS_MULTILABEL)
  printf("-l ");
 printf("-m %d ", fs->fs_minfree);

 printf("-o ");
 switch (fs->fs_optim) {
 case 129:
  printf("space ");
  break;
 case 128:
  printf("time ");
  break;
 default:
  printf("unknown ");
  break;
 }

 printf("-s %jd ", (intmax_t)fsbtodb(fs, fs->fs_size));
 if (fs->fs_flags & FS_TRIM)
  printf("-t ");
 printf("%s ", disk.d_name);
 printf("\n");

 return 0;
}
