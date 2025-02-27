
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
struct uio {scalar_t__ uio_offset; int uio_resid; } ;
struct tools_context {int access_type; TYPE_1__* tdev; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int fdev; } ;


 int M_DEVBUF ;
 int M_WAITOK ;
 int dev_dbg (int ,char*,int ,int ) ;
 int devfs_get_cdevpriv (void**) ;
 int free (void*,int ) ;
 void* malloc (size_t,int ,int ) ;
 int mem_read (TYPE_1__*,void*,size_t,scalar_t__,int ,size_t*) ;
 int mlx5_fpga_dev (int ) ;
 int tools_char_llseek (struct tools_context*,struct uio*,size_t*) ;
 int uiomove (void*,size_t,struct uio*) ;

__attribute__((used)) static int
tools_char_read(struct cdev *dev, struct uio *uio, int ioflag)
{
 struct tools_context *context;
 void *kbuf;
 size_t len, len1;
 int ret;

 ret = devfs_get_cdevpriv((void **)&context);
 if (ret != 0)
  return (ret);
 dev_dbg(mlx5_fpga_dev(context->tdev->fdev),
     "tools char device reading %zu bytes at 0x%jx\n", uio->uio_resid,
      (uintmax_t)uio->uio_offset);

 tools_char_llseek(context, uio, &len);
 if (len == 0)
  return (0);

 kbuf = malloc(len, M_DEVBUF, M_WAITOK);
 ret = mem_read(context->tdev, kbuf, len, uio->uio_offset,
     context->access_type, &len1);
 if (ret == 0)
  ret = uiomove(kbuf, len1, uio);
 free(kbuf, M_DEVBUF);
 return (ret);
}
