
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vfs_time {int year; int mon; int day; int hour; int min; int sec; } ;
struct vfs_stat {char* name; int is_dir; int is_rdonly; int is_hidden; int is_sys; int is_arch; int tm_valid; struct vfs_time tm; int size; } ;
struct TYPE_3__ {int fattrib; int fdate; int ftime; int fsize; int fname; } ;
typedef TYPE_1__ FILINFO ;


 int AM_ARC ;
 int AM_DIR ;
 int AM_HID ;
 int AM_RDO ;
 int AM_SYS ;
 int FS_OBJ_NAME_LEN ;
 int memset (struct vfs_stat*,int ,int) ;
 int strncpy (char*,int ,int) ;

__attribute__((used)) static void myfatfs_fill_stat( const FILINFO *fno, struct vfs_stat *buf )
{
  memset( buf, 0, sizeof( struct vfs_stat ) );


  strncpy( buf->name, fno->fname, FS_OBJ_NAME_LEN+1 );
  buf->name[FS_OBJ_NAME_LEN] = '\0';
  buf->size = fno->fsize;
  buf->is_dir = fno->fattrib & AM_DIR ? 1 : 0;
  buf->is_rdonly = fno->fattrib & AM_RDO ? 1 : 0;
  buf->is_hidden = fno->fattrib & AM_HID ? 1 : 0;
  buf->is_sys = fno->fattrib & AM_SYS ? 1 : 0;
  buf->is_arch = fno->fattrib & AM_ARC ? 1 : 0;

  struct vfs_time *tm = &(buf->tm);
  tm->year = (fno->fdate >> 9) + 1980;
  tm->mon = (fno->fdate >> 5) & 0x0f;
  tm->day = fno->fdate & 0x1f;
  tm->hour = (fno->ftime >> 11);
  tm->min = (fno->ftime >> 5) & 0x3f;
  tm->sec = fno->ftime & 0x3f;
  buf->tm_valid = 1;
}
