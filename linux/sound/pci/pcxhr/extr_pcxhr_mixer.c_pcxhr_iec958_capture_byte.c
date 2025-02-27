
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcxhr {int chip_idx; TYPE_1__* card; TYPE_2__* mgr; } ;
struct pcxhr_rmh {int* cmd; int cmd_len; int* stat; } ;
struct TYPE_4__ {scalar_t__ board_aes_in_192k; } ;
struct TYPE_3__ {int dev; } ;


 int CHIP_SIG_AND_MAP_SPI ;
 int CMD_ACCESS_IO_READ ;
 int CS8416_CSB0 ;
 int CS8416_CSB1 ;
 int CS8416_CSB2 ;
 int CS8416_CSB3 ;
 int CS8416_CSB4 ;
 int CS8420_01_CS ;
 int CS8420_23_CS ;
 int CS8420_45_CS ;
 int CS8420_67_CS ;
 int CS8420_CSB0 ;
 int CS8420_CSB1 ;
 int CS8420_CSB2 ;
 int CS8420_CSB3 ;
 int CS8420_CSB4 ;
 int EINVAL ;
 int IO_NUM_UER_CHIP_REG ;
 int dev_dbg (int ,char*,int,int,unsigned char) ;
 int pcxhr_init_rmh (struct pcxhr_rmh*,int ) ;
 int pcxhr_send_msg (TYPE_2__*,struct pcxhr_rmh*) ;

__attribute__((used)) static int pcxhr_iec958_capture_byte(struct snd_pcxhr *chip,
         int aes_idx, unsigned char *aes_bits)
{
 int i, err;
 unsigned char temp;
 struct pcxhr_rmh rmh;

 pcxhr_init_rmh(&rmh, CMD_ACCESS_IO_READ);
 rmh.cmd[0] |= IO_NUM_UER_CHIP_REG;
 switch (chip->chip_idx) {

 case 0: rmh.cmd[1] = CS8420_01_CS; break;
 case 1: rmh.cmd[1] = CS8420_23_CS; break;
 case 2: rmh.cmd[1] = CS8420_45_CS; break;
 case 3: rmh.cmd[1] = CS8420_67_CS; break;
 default: return -EINVAL;
 }
 if (chip->mgr->board_aes_in_192k) {
  switch (aes_idx) {
  case 0: rmh.cmd[2] = CS8416_CSB0; break;
  case 1: rmh.cmd[2] = CS8416_CSB1; break;
  case 2: rmh.cmd[2] = CS8416_CSB2; break;
  case 3: rmh.cmd[2] = CS8416_CSB3; break;
  case 4: rmh.cmd[2] = CS8416_CSB4; break;
  default: return -EINVAL;
  }
 } else {
  switch (aes_idx) {

  case 0: rmh.cmd[2] = CS8420_CSB0; break;
  case 1: rmh.cmd[2] = CS8420_CSB1; break;
  case 2: rmh.cmd[2] = CS8420_CSB2; break;
  case 3: rmh.cmd[2] = CS8420_CSB3; break;
  case 4: rmh.cmd[2] = CS8420_CSB4; break;
  default: return -EINVAL;
  }
 }

 rmh.cmd[1] &= 0x0fffff;

 rmh.cmd[2] &= CHIP_SIG_AND_MAP_SPI;
 rmh.cmd_len = 3;
 err = pcxhr_send_msg(chip->mgr, &rmh);
 if (err)
  return err;

 if (chip->mgr->board_aes_in_192k) {
  temp = (unsigned char)rmh.stat[1];
 } else {
  temp = 0;

  for (i = 0; i < 8; i++) {
   temp <<= 1;
   if (rmh.stat[1] & (1 << i))
    temp |= 1;
  }
 }
 dev_dbg(chip->card->dev, "read iec958 AES %d byte %d = 0x%x\n",
      chip->chip_idx, aes_idx, temp);
 *aes_bits = temp;
 return 0;
}
