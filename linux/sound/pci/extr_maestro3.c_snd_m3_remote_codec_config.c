
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct snd_m3 {int iobase; TYPE_1__* pci; } ;
struct TYPE_2__ {int subsystem_vendor; int subsystem_device; } ;


 int COMMAND_ADDR_OUT ;
 int M3I_DOCK_ENABLE ;
 scalar_t__ RING_BUS_CTRL_B ;
 scalar_t__ SDO_IN_DEST_CTRL ;
 scalar_t__ SDO_OUT_DEST_CTRL ;
 int SECOND_CODEC_ID_MASK ;
 int STATUS_ADDR_IN ;
 int inw (scalar_t__) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static void snd_m3_remote_codec_config(struct snd_m3 *chip, int isremote)
{
 int io = chip->iobase;
 u16 tmp;

 isremote = isremote ? 1 : 0;

 tmp = inw(io + RING_BUS_CTRL_B) & ~SECOND_CODEC_ID_MASK;

 if (chip->pci->subsystem_vendor == 0x1028 &&
     chip->pci->subsystem_device == 0x00e5)
  tmp |= M3I_DOCK_ENABLE;
 outw(tmp | isremote, io + RING_BUS_CTRL_B);
 outw((inw(io + SDO_OUT_DEST_CTRL) & ~COMMAND_ADDR_OUT) | isremote,
      io + SDO_OUT_DEST_CTRL);
 outw((inw(io + SDO_IN_DEST_CTRL) & ~STATUS_ADDR_IN) | isremote,
      io + SDO_IN_DEST_CTRL);
}
