
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ io_type; scalar_t__ io_error; scalar_t__ io_delay; TYPE_2__* io_vd; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_19__ {TYPE_3__* vdev_ops; } ;
typedef TYPE_2__ vdev_t ;
struct TYPE_20__ {int (* vdev_op_io_done ) (TYPE_1__*) ;scalar_t__ vdev_op_leaf; } ;
typedef TYPE_3__ vdev_ops_t ;
typedef scalar_t__ boolean_t ;


 int ASSERT (int) ;
 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int EILSEQ ;
 int EIO ;
 int ENXIO ;
 scalar_t__ SET_ERROR (int ) ;
 int VERIFY (int ) ;
 int ZIO_CHILD_VDEV_BIT ;
 scalar_t__ ZIO_TYPE_READ ;
 scalar_t__ ZIO_TYPE_TRIM ;
 scalar_t__ ZIO_TYPE_WRITE ;
 int ZIO_WAIT_DONE ;
 scalar_t__ gethrtime () ;
 int stub1 (TYPE_1__*) ;
 int vdev_accessible (TYPE_2__*,TYPE_1__*) ;
 int vdev_cache_write (TYPE_1__*) ;
 TYPE_3__ vdev_mirror_ops ;
 int * vdev_probe (TYPE_2__*,TYPE_1__*) ;
 int vdev_queue_io_done (TYPE_1__*) ;
 scalar_t__ zio_handle_device_injections (TYPE_2__*,TYPE_1__*,int ,int ) ;
 scalar_t__ zio_handle_label_injection (TYPE_1__*,int ) ;
 scalar_t__ zio_injection_enabled ;
 scalar_t__ zio_wait_for_children (TYPE_1__*,int ,int ) ;

__attribute__((used)) static zio_t *
zio_vdev_io_done(zio_t *zio)
{
 vdev_t *vd = zio->io_vd;
 vdev_ops_t *ops = vd ? vd->vdev_ops : &vdev_mirror_ops;
 boolean_t unexpected_error = B_FALSE;

 if (zio_wait_for_children(zio, ZIO_CHILD_VDEV_BIT, ZIO_WAIT_DONE)) {
  return (((void*)0));
 }

 ASSERT(zio->io_type == ZIO_TYPE_READ ||
     zio->io_type == ZIO_TYPE_WRITE || zio->io_type == ZIO_TYPE_TRIM);

 if (zio->io_delay)
  zio->io_delay = gethrtime() - zio->io_delay;

 if (vd != ((void*)0) && vd->vdev_ops->vdev_op_leaf) {

  vdev_queue_io_done(zio);

  if (zio->io_type == ZIO_TYPE_WRITE)
   vdev_cache_write(zio);

  if (zio_injection_enabled && zio->io_error == 0)
   zio->io_error = zio_handle_device_injections(vd, zio,
       EIO, EILSEQ);

  if (zio_injection_enabled && zio->io_error == 0)
   zio->io_error = zio_handle_label_injection(zio, EIO);

  if (zio->io_error && zio->io_type != ZIO_TYPE_TRIM) {
   if (!vdev_accessible(vd, zio)) {
    zio->io_error = SET_ERROR(ENXIO);
   } else {
    unexpected_error = B_TRUE;
   }
  }
 }

 ops->vdev_op_io_done(zio);

 if (unexpected_error)
  VERIFY(vdev_probe(vd, zio) == ((void*)0));

 return (zio);
}
