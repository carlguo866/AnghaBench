
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int ;
struct ahc_devinfo {int target_offset; char channel; int target_mask; int role; void* lun; void* target; void* our_scsiid; } ;
typedef int role_t ;



void
ahc_compile_devinfo(struct ahc_devinfo *devinfo, u_int our_id, u_int target,
      u_int lun, char channel, role_t role)
{
 devinfo->our_scsiid = our_id;
 devinfo->target = target;
 devinfo->lun = lun;
 devinfo->target_offset = target;
 devinfo->channel = channel;
 devinfo->role = role;
 if (channel == 'B')
  devinfo->target_offset += 8;
 devinfo->target_mask = (0x01 << devinfo->target_offset);
}
