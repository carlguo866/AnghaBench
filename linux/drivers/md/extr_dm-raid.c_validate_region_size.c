
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int chunksize; } ;
struct TYPE_6__ {unsigned long chunk_sectors; TYPE_2__ bitmap_info; } ;
struct raid_set {TYPE_3__ md; TYPE_1__* ti; } ;
struct TYPE_4__ {int len; char* error; } ;


 int DMERR (char*,unsigned long,unsigned long) ;
 int DMINFO (char*,...) ;
 int EINVAL ;
 int is_power_of_2 (unsigned long) ;
 unsigned long roundup_pow_of_two (unsigned long) ;
 scalar_t__ rs_is_raid0 (struct raid_set*) ;
 int to_bytes (unsigned long) ;

__attribute__((used)) static int validate_region_size(struct raid_set *rs, unsigned long region_size)
{
 unsigned long min_region_size = rs->ti->len / (1 << 21);

 if (rs_is_raid0(rs))
  return 0;

 if (!region_size) {



  if (min_region_size > (1 << 13)) {

   region_size = roundup_pow_of_two(min_region_size);
   DMINFO("Choosing default region size of %lu sectors",
          region_size);
  } else {
   DMINFO("Choosing default region size of 4MiB");
   region_size = 1 << 13;
  }
 } else {



  if (region_size > rs->ti->len) {
   rs->ti->error = "Supplied region size is too large";
   return -EINVAL;
  }

  if (region_size < min_region_size) {
   DMERR("Supplied region_size (%lu sectors) below minimum (%lu)",
         region_size, min_region_size);
   rs->ti->error = "Supplied region size is too small";
   return -EINVAL;
  }

  if (!is_power_of_2(region_size)) {
   rs->ti->error = "Region size is not a power of 2";
   return -EINVAL;
  }

  if (region_size < rs->md.chunk_sectors) {
   rs->ti->error = "Region size is smaller than the chunk size";
   return -EINVAL;
  }
 }




 rs->md.bitmap_info.chunksize = to_bytes(region_size);

 return 0;
}
