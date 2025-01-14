
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int st_mode; int st_nlink; int st_size; scalar_t__ st_gid; scalar_t__ st_uid; } ;
struct open_file {scalar_t__ f_fsdata; } ;
struct TYPE_4__ {int attr; } ;
struct TYPE_3__ {TYPE_2__ de; int fs; } ;
typedef TYPE_1__ DOS_FILE ;


 int EINVAL ;
 int FA_DIR ;
 int S_IFDIR ;
 int S_IFREG ;
 int fsize (int ,TYPE_2__*) ;

__attribute__((used)) static int
dos_stat(struct open_file *fd, struct stat *sb)
{
    DOS_FILE *f = (DOS_FILE *)fd->f_fsdata;


    sb->st_mode = f->de.attr & FA_DIR ? S_IFDIR | 0555 : S_IFREG | 0444;
    sb->st_nlink = 1;
    sb->st_uid = 0;
    sb->st_gid = 0;
    if ((sb->st_size = fsize(f->fs, &f->de)) == -1)
 return (EINVAL);
    return (0);
}
