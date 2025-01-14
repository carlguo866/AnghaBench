
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct net_device {int dummy; } ;
struct i40e_ddp_version {scalar_t__ major; int draft; int update; int minor; } ;
struct i40e_package_header {int segment_count; size_t* segment_offset; struct i40e_ddp_version version; } ;
struct i40e_metadata_segment {int dummy; } ;


 int netdev_err (struct net_device*,char*,...) ;

__attribute__((used)) static bool i40e_ddp_is_pkg_hdr_valid(struct net_device *netdev,
          struct i40e_package_header *pkg_hdr,
          size_t size_huge)
{
 u32 size = 0xFFFFFFFFU & size_huge;
 u32 pkg_hdr_size;
 u32 segment;

 if (!pkg_hdr)
  return 0;

 if (pkg_hdr->version.major > 0) {
  struct i40e_ddp_version ver = pkg_hdr->version;

  netdev_err(netdev, "Unsupported DDP profile version %u.%u.%u.%u",
      ver.major, ver.minor, ver.update, ver.draft);
  return 0;
 }
 if (size_huge > size) {
  netdev_err(netdev, "Invalid DDP profile - size is bigger than 4G");
  return 0;
 }
 if (size < (sizeof(struct i40e_package_header) +
  sizeof(struct i40e_metadata_segment) + sizeof(u32) * 2)) {
  netdev_err(netdev, "Invalid DDP profile - size is too small.");
  return 0;
 }

 pkg_hdr_size = sizeof(u32) * (pkg_hdr->segment_count + 2U);
 if (size < pkg_hdr_size) {
  netdev_err(netdev, "Invalid DDP profile - too many segments");
  return 0;
 }
 for (segment = 0; segment < pkg_hdr->segment_count; ++segment) {
  u32 offset = pkg_hdr->segment_offset[segment];

  if (0xFU & offset) {
   netdev_err(netdev,
       "Invalid DDP profile %u segment alignment",
       segment);
   return 0;
  }
  if (pkg_hdr_size > offset || offset >= size) {
   netdev_err(netdev,
       "Invalid DDP profile %u segment offset",
       segment);
   return 0;
  }
 }

 return 1;
}
