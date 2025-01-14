
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct open_file {scalar_t__ f_fsdata; } ;
struct TYPE_2__ {scalar_t__ di_size; } ;
struct file {scalar_t__ f_seekp; TYPE_1__ f_di; } ;
struct ext2dirent {scalar_t__ d_reclen; scalar_t__ d_ino; size_t d_namlen; int d_name; int d_type; } ;
struct dirent {char* d_name; int d_type; } ;
typedef scalar_t__ ino_t ;


 int ENOENT ;
 int EXTFTODT (int ) ;
 int buf_read_file (struct open_file*,char**,size_t*) ;
 int strncpy (char*,int ,size_t) ;

__attribute__((used)) static int
ext2fs_readdir(struct open_file *f, struct dirent *d)
{
 struct file *fp = (struct file *)f->f_fsdata;
 struct ext2dirent *ed;
 char *buf;
 size_t buf_size;
 int error;




again:
 if (fp->f_seekp >= fp->f_di.di_size)
  return (ENOENT);
 error = buf_read_file(f, &buf, &buf_size);
 if (error)
  return (error);
 ed = (struct ext2dirent *)buf;
 fp->f_seekp += ed->d_reclen;
 if (ed->d_ino == (ino_t)0)
  goto again;
 d->d_type = EXTFTODT(ed->d_type);
 strncpy(d->d_name, ed->d_name, ed->d_namlen);
 d->d_name[ed->d_namlen] = '\0';
 return (0);
}
