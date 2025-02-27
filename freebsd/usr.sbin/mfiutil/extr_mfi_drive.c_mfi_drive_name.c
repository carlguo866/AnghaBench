
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {int device_id; } ;
struct TYPE_4__ {TYPE_1__ v; } ;
struct mfi_pd_info {int encl_device_id; int slot_number; int encl_index; TYPE_2__ ref; } ;
typedef int buf ;


 int MFI_DNAME_DEVICE_ID ;
 int MFI_DNAME_ES ;
 int MFI_DNAME_HONOR_OPTS ;
 int O_RDWR ;
 int close (int) ;
 int mfi_open (int ,int ) ;
 int mfi_opts ;
 scalar_t__ mfi_pd_get_info (int,int,struct mfi_pd_info*,int *) ;
 int mfi_unit ;
 int snprintf (char*,int,char*,...) ;
 int warn (char*,...) ;

const char *
mfi_drive_name(struct mfi_pd_info *pinfo, uint16_t device_id, uint32_t def)
{
 struct mfi_pd_info info;
 static char buf[16];
 char *p;
 int error, fd, len;

 if ((def & MFI_DNAME_HONOR_OPTS) != 0 &&
     (mfi_opts & (MFI_DNAME_ES|MFI_DNAME_DEVICE_ID)) != 0)
  def = mfi_opts & (MFI_DNAME_ES|MFI_DNAME_DEVICE_ID);

 buf[0] = '\0';
 if (pinfo == ((void*)0) && def & MFI_DNAME_ES) {

  if (device_id == 0xffff)
   snprintf(buf, sizeof(buf), "MISSING");
  else
   snprintf(buf, sizeof(buf), "%2u", device_id);

  fd = mfi_open(mfi_unit, O_RDWR);
  if (fd < 0) {
   warn("mfi_open");
   return (buf);
  }


  if (mfi_pd_get_info(fd, device_id, &info, ((void*)0)) < 0) {
   warn("Failed to fetch info for drive %2u", device_id);
   close(fd);
   return (buf);
  }

  close(fd);
  pinfo = &info;
 }

 p = buf;
 len = sizeof(buf);
 if (def & MFI_DNAME_DEVICE_ID) {
  if (device_id == 0xffff)
   error = snprintf(p, len, "MISSING");
  else
   error = snprintf(p, len, "%2u", device_id);
  if (error >= 0) {
   p += error;
   len -= error;
  }
 }
 if ((def & (MFI_DNAME_ES|MFI_DNAME_DEVICE_ID)) ==
     (MFI_DNAME_ES|MFI_DNAME_DEVICE_ID) && len >= 2) {
  *p++ = ' ';
  len--;
  *p = '\0';
  len--;
 }
 if (def & MFI_DNAME_ES) {
  if (pinfo->encl_device_id == 0xffff)
   error = snprintf(p, len, "S%u",
       pinfo->slot_number);
  else if (pinfo->encl_device_id == pinfo->ref.v.device_id)
   error = snprintf(p, len, "E%u",
       pinfo->encl_index);
  else
   error = snprintf(p, len, "E%u:S%u",
       pinfo->encl_index, pinfo->slot_number);
  if (error >= 0) {
   p += error;
   len -= error;
  }
 }

 return (buf);
}
