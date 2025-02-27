
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mtd_partition {unsigned long offset; unsigned long size; int name; } ;
struct mtd_part_parser_data {int dummy; } ;
struct mtd_info {unsigned long size; } ;


 scalar_t__ BRNIMAGE_ALIGN_BYTES ;
 unsigned long BRNIMAGE_FOOTER_SIZE ;
 unsigned long BRNIMAGE_MAX_OVERHEAD ;
 unsigned long BRNIMAGE_MIN_OVERHEAD ;
 int BRNIMAGE_NR_PARTS ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KERNEL_PART_NAME ;
 int ROOTFS_PART_NAME ;
 struct mtd_partition* kzalloc (int,int ) ;
 unsigned long le32_to_cpu (int ) ;
 int mtd_check_rootfs_magic (struct mtd_info*,unsigned long,int *) ;
 int mtd_read (struct mtd_info*,unsigned long,int,size_t*,void*) ;

__attribute__((used)) static int mtdsplit_parse_brnimage(struct mtd_info *master,
    const struct mtd_partition **pparts,
    struct mtd_part_parser_data *data)
{
 struct mtd_partition *parts;
 uint32_t buf;
 unsigned long rootfs_offset, rootfs_size, kernel_size;
 size_t len;
 int ret = 0;

 for (rootfs_offset = 0; rootfs_offset < master->size;
      rootfs_offset += BRNIMAGE_ALIGN_BYTES) {
  ret = mtd_check_rootfs_magic(master, rootfs_offset, ((void*)0));
  if (!ret)
   break;
 }

 if (ret)
  return ret;

 if (rootfs_offset >= master->size)
  return -EINVAL;

 ret = mtd_read(master, rootfs_offset - BRNIMAGE_FOOTER_SIZE, 4, &len,
   (void *)&buf);
 if (ret)
  return ret;

 if (len != 4)
  return -EIO;

 kernel_size = le32_to_cpu(buf);

 if (kernel_size > (rootfs_offset - BRNIMAGE_MIN_OVERHEAD))
  return -EINVAL;

 if (kernel_size < (rootfs_offset - BRNIMAGE_MAX_OVERHEAD))
  return -EINVAL;





 rootfs_size = master->size - rootfs_offset - BRNIMAGE_FOOTER_SIZE;

 parts = kzalloc(BRNIMAGE_NR_PARTS * sizeof(*parts), GFP_KERNEL);
 if (!parts)
  return -ENOMEM;

 parts[0].name = KERNEL_PART_NAME;
 parts[0].offset = 0;
 parts[0].size = kernel_size;

 parts[1].name = ROOTFS_PART_NAME;
 parts[1].offset = rootfs_offset;
 parts[1].size = rootfs_size;

 *pparts = parts;
 return BRNIMAGE_NR_PARTS;
}
