
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rootfs_ofs; int kernel_len; int kernel_ofs; } ;
struct TYPE_3__ {int rootfs_ofs; int kernel_len; int kernel_ofs; } ;
struct tplink_fw_header {TYPE_2__ v2; TYPE_1__ v1; int version; } ;
struct mtd_partition {size_t offset; size_t size; int name; } ;
struct mtd_part_parser_data {int dummy; } ;
struct mtd_info {size_t size; } ;
typedef int hdr ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KERNEL_PART_NAME ;
 int ROOTFS_PART_NAME ;
 int TPLINK_MIN_ROOTFS_OFFS ;
 int TPLINK_NR_PARTS ;
 int be32_to_cpu (int ) ;
 struct mtd_partition* kzalloc (int,int ) ;
 int le32_to_cpu (int ) ;
 int mtd_check_rootfs_magic (struct mtd_info*,size_t,int *) ;
 int mtd_find_rootfs_from (struct mtd_info*,int ,size_t,size_t*,int *) ;
 int mtd_read (struct mtd_info*,int ,size_t,size_t*,void*) ;

__attribute__((used)) static int mtdsplit_parse_tplink(struct mtd_info *master,
     const struct mtd_partition **pparts,
     struct mtd_part_parser_data *data)
{
 struct tplink_fw_header hdr;
 size_t hdr_len, retlen, kernel_size;
 size_t rootfs_offset;
 struct mtd_partition *parts;
 int err;

 hdr_len = sizeof(hdr);
 err = mtd_read(master, 0, hdr_len, &retlen, (void *) &hdr);
 if (err)
  return err;

 if (retlen != hdr_len)
  return -EIO;

 switch (le32_to_cpu(hdr.version)) {
 case 1:
  if (be32_to_cpu(hdr.v1.kernel_ofs) != sizeof(hdr))
   return -EINVAL;

  kernel_size = sizeof(hdr) + be32_to_cpu(hdr.v1.kernel_len);
  rootfs_offset = be32_to_cpu(hdr.v1.rootfs_ofs);
  break;
 case 2:
 case 3:
  if (be32_to_cpu(hdr.v2.kernel_ofs) != sizeof(hdr))
   return -EINVAL;

  kernel_size = sizeof(hdr) + be32_to_cpu(hdr.v2.kernel_len);
  rootfs_offset = be32_to_cpu(hdr.v2.rootfs_ofs);
  break;
 default:
  return -EINVAL;
 }

 if (kernel_size > master->size)
  return -EINVAL;


 err = mtd_check_rootfs_magic(master, rootfs_offset, ((void*)0));
 if (err) {




  err = mtd_find_rootfs_from(master, TPLINK_MIN_ROOTFS_OFFS,
        master->size, &rootfs_offset, ((void*)0));
  if (err)
   return err;
 }

 parts = kzalloc(TPLINK_NR_PARTS * sizeof(*parts), GFP_KERNEL);
 if (!parts)
  return -ENOMEM;

 parts[0].name = KERNEL_PART_NAME;
 parts[0].offset = 0;
 parts[0].size = kernel_size;

 parts[1].name = ROOTFS_PART_NAME;
 parts[1].offset = rootfs_offset;
 parts[1].size = master->size - rootfs_offset;

 *pparts = parts;
 return TPLINK_NR_PARTS;
}
