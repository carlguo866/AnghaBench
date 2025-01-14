
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct cpu_reg {int mode; int mode_value_halt; int state; int state_value_clear; int spad_base; int mips_view_base; int inst; int pc; } ;
struct TYPE_7__ {int offset; int len; int addr; } ;
struct TYPE_6__ {int offset; int len; int addr; } ;
struct TYPE_5__ {int offset; int len; int addr; } ;
struct bnx2_mips_fw_file_entry {int start_addr; TYPE_3__ rodata; TYPE_2__ data; TYPE_1__ text; } ;
struct bnx2 {TYPE_4__* mips_firmware; } ;
typedef int __be32 ;
struct TYPE_8__ {scalar_t__ data; } ;


 int be32_to_cpu (int ) ;
 int bnx2_reg_rd_ind (struct bnx2*,int) ;
 int bnx2_reg_wr_ind (struct bnx2*,int,int) ;

__attribute__((used)) static int
load_cpu_fw(struct bnx2 *bp, const struct cpu_reg *cpu_reg,
     const struct bnx2_mips_fw_file_entry *fw_entry)
{
 u32 addr, len, file_offset;
 __be32 *data;
 u32 offset;
 u32 val;


 val = bnx2_reg_rd_ind(bp, cpu_reg->mode);
 val |= cpu_reg->mode_value_halt;
 bnx2_reg_wr_ind(bp, cpu_reg->mode, val);
 bnx2_reg_wr_ind(bp, cpu_reg->state, cpu_reg->state_value_clear);


 addr = be32_to_cpu(fw_entry->text.addr);
 len = be32_to_cpu(fw_entry->text.len);
 file_offset = be32_to_cpu(fw_entry->text.offset);
 data = (__be32 *)(bp->mips_firmware->data + file_offset);

 offset = cpu_reg->spad_base + (addr - cpu_reg->mips_view_base);
 if (len) {
  int j;

  for (j = 0; j < (len / 4); j++, offset += 4)
   bnx2_reg_wr_ind(bp, offset, be32_to_cpu(data[j]));
 }


 addr = be32_to_cpu(fw_entry->data.addr);
 len = be32_to_cpu(fw_entry->data.len);
 file_offset = be32_to_cpu(fw_entry->data.offset);
 data = (__be32 *)(bp->mips_firmware->data + file_offset);

 offset = cpu_reg->spad_base + (addr - cpu_reg->mips_view_base);
 if (len) {
  int j;

  for (j = 0; j < (len / 4); j++, offset += 4)
   bnx2_reg_wr_ind(bp, offset, be32_to_cpu(data[j]));
 }


 addr = be32_to_cpu(fw_entry->rodata.addr);
 len = be32_to_cpu(fw_entry->rodata.len);
 file_offset = be32_to_cpu(fw_entry->rodata.offset);
 data = (__be32 *)(bp->mips_firmware->data + file_offset);

 offset = cpu_reg->spad_base + (addr - cpu_reg->mips_view_base);
 if (len) {
  int j;

  for (j = 0; j < (len / 4); j++, offset += 4)
   bnx2_reg_wr_ind(bp, offset, be32_to_cpu(data[j]));
 }


 bnx2_reg_wr_ind(bp, cpu_reg->inst, 0);

 val = be32_to_cpu(fw_entry->start_addr);
 bnx2_reg_wr_ind(bp, cpu_reg->pc, val);


 val = bnx2_reg_rd_ind(bp, cpu_reg->mode);
 val &= ~cpu_reg->mode_value_halt;
 bnx2_reg_wr_ind(bp, cpu_reg->state, cpu_reg->state_value_clear);
 bnx2_reg_wr_ind(bp, cpu_reg->mode, val);

 return 0;
}
