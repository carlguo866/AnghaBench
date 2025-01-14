
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ath10k_mem_section {unsigned int start; unsigned int end; } ;
struct TYPE_2__ {int size; struct ath10k_mem_section* sections; } ;
struct ath10k_mem_region {unsigned int start; TYPE_1__ section_table; } ;
struct ath10k {int dummy; } ;


 int ATH10K_MAGIC_NOT_COPIED ;
 int ath10k_pci_diag_read_mem (struct ath10k*,unsigned int,int *,unsigned int) ;
 int ath10k_warn (struct ath10k*,char*,unsigned int,...) ;

__attribute__((used)) static int ath10k_pci_dump_memory_section(struct ath10k *ar,
       const struct ath10k_mem_region *mem_region,
       u8 *buf, size_t buf_len)
{
 const struct ath10k_mem_section *cur_section, *next_section;
 unsigned int count, section_size, skip_size;
 int ret, i, j;

 if (!mem_region || !buf)
  return 0;

 cur_section = &mem_region->section_table.sections[0];

 if (mem_region->start > cur_section->start) {
  ath10k_warn(ar, "incorrect memdump region 0x%x with section start address 0x%x.\n",
       mem_region->start, cur_section->start);
  return 0;
 }

 skip_size = cur_section->start - mem_region->start;




 for (i = 0; i < skip_size; i++) {
  *buf = ATH10K_MAGIC_NOT_COPIED;
  buf++;
 }

 count = 0;

 for (i = 0; cur_section != ((void*)0); i++) {
  section_size = cur_section->end - cur_section->start;

  if (section_size <= 0) {
   ath10k_warn(ar, "incorrect ramdump format with start address 0x%x and stop address 0x%x\n",
        cur_section->start,
        cur_section->end);
   break;
  }

  if ((i + 1) == mem_region->section_table.size) {

   next_section = ((void*)0);
   skip_size = 0;
  } else {
   next_section = cur_section + 1;

   if (cur_section->end > next_section->start) {
    ath10k_warn(ar, "next ramdump section 0x%x is smaller than current end address 0x%x\n",
         next_section->start,
         cur_section->end);
    break;
   }

   skip_size = next_section->start - cur_section->end;
  }

  if (buf_len < (skip_size + section_size)) {
   ath10k_warn(ar, "ramdump buffer is too small: %zu\n", buf_len);
   break;
  }

  buf_len -= skip_size + section_size;


  ret = ath10k_pci_diag_read_mem(ar, cur_section->start,
            buf, section_size);
  if (ret) {
   ath10k_warn(ar, "failed to read ramdump from section 0x%x: %d\n",
        cur_section->start, ret);
   break;
  }

  buf += section_size;
  count += section_size;


  for (j = 0; j < skip_size; j++) {
   *buf = ATH10K_MAGIC_NOT_COPIED;
   buf++;
  }

  count += skip_size;

  if (!next_section)

   break;

  cur_section = next_section;
 }

 return count;
}
