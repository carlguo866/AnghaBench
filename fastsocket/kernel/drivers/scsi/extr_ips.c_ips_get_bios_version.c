
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_15__ {int type; int total_packets; int buffer_addr; scalar_t__ packet_num; int count; scalar_t__ direction; int command_id; void* op_code; } ;
struct TYPE_16__ {TYPE_2__ flashfw; } ;
struct TYPE_17__ {int data_len; int basic_status; TYPE_3__ cmd; void** cdb; int timeout; } ;
typedef TYPE_4__ ips_scb_t ;
struct TYPE_18__ {char* bios_version; int* ioctl_data; int max_cmds; int ioctl_busaddr; TYPE_4__* scbs; scalar_t__ io_addr; TYPE_1__* pcidev; scalar_t__ mem_ptr; } ;
typedef TYPE_5__ ips_ha_t ;
struct TYPE_14__ {scalar_t__ device; scalar_t__ revision; } ;


 void* IPS_CMD_RW_BIOSFW ;
 int IPS_COMMAND_ID (TYPE_5__*,TYPE_4__*) ;
 scalar_t__ IPS_DEVICEID_COPPERHEAD ;
 int IPS_FAILURE ;
 int IPS_GSC_STATUS_MASK ;
 scalar_t__ IPS_REG_FLAP ;
 scalar_t__ IPS_REG_FLDP ;
 scalar_t__ IPS_REVID_TROMBONE64 ;
 int IPS_SUCCESS_IMM ;
 scalar_t__ IPS_USE_MEMIO (TYPE_5__*) ;
 int METHOD_TRACE (char*,int) ;
 int cpu_to_le32 (int) ;
 int inb (scalar_t__) ;
 int ips_cmd_timeout ;
 int ips_init_scb (TYPE_5__*,TYPE_4__*) ;
 int ips_send_wait (TYPE_5__*,TYPE_4__*,int ,int) ;
 int memset (int*,int ,int) ;
 int outl (int,scalar_t__) ;
 int readb (scalar_t__) ;
 int strncpy (char*,char*,int) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void
ips_get_bios_version(ips_ha_t * ha, int intr)
{
 ips_scb_t *scb;
 int ret;
 uint8_t major;
 uint8_t minor;
 uint8_t subminor;
 uint8_t *buffer;
 char hexDigits[] =
     { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C',
     'D', 'E', 'F' };

 METHOD_TRACE("ips_get_bios_version", 1);

 major = 0;
 minor = 0;

 strncpy(ha->bios_version, "       ?", 8);

 if (ha->pcidev->device == IPS_DEVICEID_COPPERHEAD) {
  if (IPS_USE_MEMIO(ha)) {



   writel(0, ha->mem_ptr + IPS_REG_FLAP);
   if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
    udelay(25);

   if (readb(ha->mem_ptr + IPS_REG_FLDP) != 0x55)
    return;

   writel(1, ha->mem_ptr + IPS_REG_FLAP);
   if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
    udelay(25);

   if (readb(ha->mem_ptr + IPS_REG_FLDP) != 0xAA)
    return;


   writel(0x1FF, ha->mem_ptr + IPS_REG_FLAP);
   if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
    udelay(25);

   major = readb(ha->mem_ptr + IPS_REG_FLDP);


   writel(0x1FE, ha->mem_ptr + IPS_REG_FLAP);
   if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
    udelay(25);
   minor = readb(ha->mem_ptr + IPS_REG_FLDP);


   writel(0x1FD, ha->mem_ptr + IPS_REG_FLAP);
   if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
    udelay(25);
   subminor = readb(ha->mem_ptr + IPS_REG_FLDP);

  } else {



   outl(0, ha->io_addr + IPS_REG_FLAP);
   if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
    udelay(25);

   if (inb(ha->io_addr + IPS_REG_FLDP) != 0x55)
    return;

   outl(1, ha->io_addr + IPS_REG_FLAP);
   if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
    udelay(25);

   if (inb(ha->io_addr + IPS_REG_FLDP) != 0xAA)
    return;


   outl(0x1FF, ha->io_addr + IPS_REG_FLAP);
   if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
    udelay(25);

   major = inb(ha->io_addr + IPS_REG_FLDP);


   outl(0x1FE, ha->io_addr + IPS_REG_FLAP);
   if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
    udelay(25);

   minor = inb(ha->io_addr + IPS_REG_FLDP);


   outl(0x1FD, ha->io_addr + IPS_REG_FLAP);
   if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
    udelay(25);

   subminor = inb(ha->io_addr + IPS_REG_FLDP);

  }
 } else {


  buffer = ha->ioctl_data;

  memset(buffer, 0, 0x1000);

  scb = &ha->scbs[ha->max_cmds - 1];

  ips_init_scb(ha, scb);

  scb->timeout = ips_cmd_timeout;
  scb->cdb[0] = IPS_CMD_RW_BIOSFW;

  scb->cmd.flashfw.op_code = IPS_CMD_RW_BIOSFW;
  scb->cmd.flashfw.command_id = IPS_COMMAND_ID(ha, scb);
  scb->cmd.flashfw.type = 1;
  scb->cmd.flashfw.direction = 0;
  scb->cmd.flashfw.count = cpu_to_le32(0x800);
  scb->cmd.flashfw.total_packets = 1;
  scb->cmd.flashfw.packet_num = 0;
  scb->data_len = 0x1000;
  scb->cmd.flashfw.buffer_addr = ha->ioctl_busaddr;


  if (((ret =
        ips_send_wait(ha, scb, ips_cmd_timeout,
        intr)) == IPS_FAILURE)
      || (ret == IPS_SUCCESS_IMM)
      || ((scb->basic_status & IPS_GSC_STATUS_MASK) > 1)) {


   return;
  }

  if ((buffer[0xC0] == 0x55) && (buffer[0xC1] == 0xAA)) {
   major = buffer[0x1ff + 0xC0];
   minor = buffer[0x1fe + 0xC0];
   subminor = buffer[0x1fd + 0xC0];
  } else {
   return;
  }
 }

 ha->bios_version[0] = hexDigits[(major & 0xF0) >> 4];
 ha->bios_version[1] = '.';
 ha->bios_version[2] = hexDigits[major & 0x0F];
 ha->bios_version[3] = hexDigits[subminor];
 ha->bios_version[4] = '.';
 ha->bios_version[5] = hexDigits[(minor & 0xF0) >> 4];
 ha->bios_version[6] = hexDigits[minor & 0x0F];
 ha->bios_version[7] = 0;
}
