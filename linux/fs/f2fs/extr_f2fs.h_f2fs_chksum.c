
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct f2fs_sb_info {int dummy; } ;


 int __f2fs_crc32 (struct f2fs_sb_info*,int ,void const*,unsigned int) ;

__attribute__((used)) static inline u32 f2fs_chksum(struct f2fs_sb_info *sbi, u32 crc,
         const void *address, unsigned int length)
{
 return __f2fs_crc32(sbi, crc, address, length);
}
