
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_volume_desc {scalar_t__ mode; struct ubi_volume* vol; } ;
struct ubi_volume {int vol_id; scalar_t__ vol_type; int reserved_pebs; int usable_leb_size; scalar_t__ upd_marker; struct ubi_device* ubi; } ;
struct ubi_device {int vtbl_slots; int min_io_size; } ;


 int EBADF ;
 int EINVAL ;
 int EROFS ;
 int UBI_LONGTERM ;
 scalar_t__ UBI_READONLY ;
 int UBI_SHORTTERM ;
 scalar_t__ UBI_STATIC_VOLUME ;
 int UBI_UNKNOWN ;
 int dbg_gen (char*,int,int,int) ;
 int ubi_eba_atomic_leb_change (struct ubi_device*,struct ubi_volume*,int,void const*,int,int) ;

int ubi_leb_change(struct ubi_volume_desc *desc, int lnum, const void *buf,
     int len, int dtype)
{
 struct ubi_volume *vol = desc->vol;
 struct ubi_device *ubi = vol->ubi;
 int vol_id = vol->vol_id;

 dbg_gen("atomically write %d bytes to LEB %d:%d", len, vol_id, lnum);

 if (vol_id < 0 || vol_id >= ubi->vtbl_slots)
  return -EINVAL;

 if (desc->mode == UBI_READONLY || vol->vol_type == UBI_STATIC_VOLUME)
  return -EROFS;

 if (lnum < 0 || lnum >= vol->reserved_pebs || len < 0 ||
     len > vol->usable_leb_size || len & (ubi->min_io_size - 1))
  return -EINVAL;

 if (dtype != UBI_LONGTERM && dtype != UBI_SHORTTERM &&
     dtype != UBI_UNKNOWN)
  return -EINVAL;

 if (vol->upd_marker)
  return -EBADF;

 if (len == 0)
  return 0;

 return ubi_eba_atomic_leb_change(ubi, vol, lnum, buf, len, dtype);
}
