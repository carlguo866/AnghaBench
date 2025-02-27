
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int uint8_t ;
struct disk {TYPE_2__* d_drv1; } ;
typedef size_t off_t ;
struct TYPE_12__ {size_t disk_number; TYPE_3__* sc; } ;
typedef TYPE_2__ ipsdisk_softc_t ;
struct TYPE_13__ {TYPE_1__* drives; int sg_dmatag; } ;
typedef TYPE_3__ ips_softc_t ;
struct TYPE_14__ {size_t lba; int drivenum; int id; } ;
typedef TYPE_4__ ips_io_cmd ;
struct TYPE_15__ {int sc; int data_dmamap; int data_dmatag; int id; scalar_t__ command_buffer; int callback; } ;
typedef TYPE_5__ ips_command_t ;
struct TYPE_11__ {int drivenum; } ;


 int BUS_DMA_NOWAIT ;
 scalar_t__ COMMAND_ERROR (TYPE_5__*) ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 size_t IPS_BLKSIZE ;
 size_t IPS_MAX_IO_SIZE ;
 scalar_t__ bus_dmamap_load (int ,int ,void*,size_t,int ,TYPE_5__*,int ) ;
 scalar_t__ ips_get_free_cmd (TYPE_3__*,TYPE_5__**,int ) ;
 int ips_insert_free_cmd (int ,TYPE_5__*) ;
 int ipsd_dump_block_complete ;
 int ipsd_dump_map_sg ;
 int printf (char*) ;

__attribute__((used)) static int
ipsd_dump(void *arg, void *virtual, vm_offset_t physical, off_t offset,
   size_t length)
{
 ipsdisk_softc_t *dsc;
 ips_softc_t *sc;
 ips_command_t *command;
 ips_io_cmd *command_struct;
 struct disk *dp;
 void *va;
 off_t off;
 size_t len;
 int error = 0;

 dp = arg;
 dsc = dp->d_drv1;

 if (dsc == ((void*)0))
  return (EINVAL);
 sc = dsc->sc;

 if (ips_get_free_cmd(sc, &command, 0) != 0) {
  printf("ipsd: failed to get cmd for dump\n");
  return (ENOMEM);
 }

 command->data_dmatag = sc->sg_dmatag;
 command->callback = ipsd_dump_block_complete;

 command_struct = (ips_io_cmd *)command->command_buffer;
 command_struct->id = command->id;
 command_struct->drivenum= sc->drives[dsc->disk_number].drivenum;

 off = offset;
 va = virtual;

 while (length > 0) {
  len =
      (length > IPS_MAX_IO_SIZE) ? IPS_MAX_IO_SIZE : length;

  command_struct->lba = off / IPS_BLKSIZE;

  if (bus_dmamap_load(command->data_dmatag, command->data_dmamap,
      va, len, ipsd_dump_map_sg, command, BUS_DMA_NOWAIT) != 0) {
   error = EIO;
   break;
  }
  if (COMMAND_ERROR(command)) {
   error = EIO;
   break;
  }

  length -= len;
  off += len;
  va = (uint8_t *)va + len;
 }

 ips_insert_free_cmd(command->sc, command);
 return (error);
}
