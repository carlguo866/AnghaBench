
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ata_taskfile {int command; int feature; int lbal; int lbam; int lbah; int device; int hob_lbal; int hob_lbam; int hob_lbah; int hob_feature; int nsect; int hob_nsect; int ctl; int auxiliary; } ;



void ata_tf_to_fis(const struct ata_taskfile *tf, u8 pmp, int is_cmd, u8 *fis)
{
 fis[0] = 0x27;
 fis[1] = pmp & 0xf;
 if (is_cmd)
  fis[1] |= (1 << 7);

 fis[2] = tf->command;
 fis[3] = tf->feature;

 fis[4] = tf->lbal;
 fis[5] = tf->lbam;
 fis[6] = tf->lbah;
 fis[7] = tf->device;

 fis[8] = tf->hob_lbal;
 fis[9] = tf->hob_lbam;
 fis[10] = tf->hob_lbah;
 fis[11] = tf->hob_feature;

 fis[12] = tf->nsect;
 fis[13] = tf->hob_nsect;
 fis[14] = 0;
 fis[15] = tf->ctl;

 fis[16] = tf->auxiliary & 0xff;
 fis[17] = (tf->auxiliary >> 8) & 0xff;
 fis[18] = (tf->auxiliary >> 16) & 0xff;
 fis[19] = (tf->auxiliary >> 24) & 0xff;
}
