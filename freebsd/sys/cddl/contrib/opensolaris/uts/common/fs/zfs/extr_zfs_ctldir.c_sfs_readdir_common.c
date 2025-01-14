
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uio_resid; int uio_offset; } ;
typedef TYPE_1__ uio_t ;
typedef void* uint64_t ;
struct vop_readdir_args {scalar_t__* a_ncookies; } ;
struct dirent {char* d_name; int d_namlen; int d_reclen; void* d_type; void* d_fileno; } ;
typedef int off_t ;
typedef int entry ;


 void* DT_DIR ;
 int EINVAL ;
 int SET_ERROR (int) ;
 int dirent_terminate (struct dirent*) ;
 int vfs_read_dirent (struct vop_readdir_args*,struct dirent*,int) ;

__attribute__((used)) static int
sfs_readdir_common(uint64_t parent_id, uint64_t id, struct vop_readdir_args *ap,
    uio_t *uio, off_t *offp)
{
 struct dirent entry;
 int error;


 if (ap->a_ncookies != ((void*)0))
  *ap->a_ncookies = 0;

 if (uio->uio_resid < sizeof(entry))
  return (SET_ERROR(EINVAL));

 if (uio->uio_offset < 0)
  return (SET_ERROR(EINVAL));
 if (uio->uio_offset == 0) {
  entry.d_fileno = id;
  entry.d_type = DT_DIR;
  entry.d_name[0] = '.';
  entry.d_namlen = 1;
  entry.d_reclen = sizeof(entry);
  dirent_terminate(&entry);
  error = vfs_read_dirent(ap, &entry, uio->uio_offset);
  if (error != 0)
   return (SET_ERROR(error));
 }

 if (uio->uio_offset < sizeof(entry))
  return (SET_ERROR(EINVAL));
 if (uio->uio_offset == sizeof(entry)) {
  entry.d_fileno = parent_id;
  entry.d_type = DT_DIR;
  entry.d_name[0] = '.';
  entry.d_name[1] = '.';
  entry.d_namlen = 2;
  entry.d_reclen = sizeof(entry);
  dirent_terminate(&entry);
  error = vfs_read_dirent(ap, &entry, uio->uio_offset);
  if (error != 0)
   return (SET_ERROR(error));
 }

 if (offp != ((void*)0))
  *offp = 2 * sizeof(entry);
 return (0);
}
