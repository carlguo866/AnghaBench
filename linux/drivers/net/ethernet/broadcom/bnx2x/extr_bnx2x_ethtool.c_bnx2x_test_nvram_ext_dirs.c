
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct code_entry {int nvm_start_addr; int code_attribute; } ;
struct bnx2x {int dummy; } ;
typedef int entry ;


 int CODE_ENTRY_EXTENDED_DIR_IDX ;
 int EXTENDED_DIR_EXISTS (int ) ;
 int MAX_IMAGES_IN_EXTENDED_DIR ;
 int NVRAM_DIR_OFFSET ;
 int bnx2x_nvram_read32 (struct bnx2x*,int,int*,int) ;
 int bnx2x_test_dir_entry (struct bnx2x*,int,int *) ;

__attribute__((used)) static int bnx2x_test_nvram_ext_dirs(struct bnx2x *bp, u8 *buff)
{
 u32 rc, cnt, dir_offset = NVRAM_DIR_OFFSET;
 struct code_entry entry;
 int i;

 rc = bnx2x_nvram_read32(bp,
    dir_offset +
    sizeof(entry) * CODE_ENTRY_EXTENDED_DIR_IDX,
    (u32 *)&entry, sizeof(entry));
 if (rc)
  return rc;

 if (!EXTENDED_DIR_EXISTS(entry.code_attribute))
  return 0;

 rc = bnx2x_nvram_read32(bp, entry.nvm_start_addr,
    &cnt, sizeof(u32));
 if (rc)
  return rc;

 dir_offset = entry.nvm_start_addr + 8;

 for (i = 0; i < cnt && i < MAX_IMAGES_IN_EXTENDED_DIR; i++) {
  rc = bnx2x_test_dir_entry(bp, dir_offset +
           sizeof(struct code_entry) * i,
       buff);
  if (rc)
   return rc;
 }

 return 0;
}
