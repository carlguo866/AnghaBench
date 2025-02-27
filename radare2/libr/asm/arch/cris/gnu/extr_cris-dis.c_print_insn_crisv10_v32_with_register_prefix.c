
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int private_data; } ;
typedef TYPE_1__ disassemble_info ;
typedef int bfd_vma ;


 int TRUE ;
 int cris_dis_common_v10_v32 ;
 int cris_parse_disassembler_options (TYPE_1__*,int ) ;
 int print_insn_cris_generic (int ,TYPE_1__*,int ) ;

int
print_insn_crisv10_v32_with_register_prefix (bfd_vma vma,
          disassemble_info *info)
{
 if (!info->private_data && !cris_parse_disassembler_options (info, cris_dis_common_v10_v32)) {
  return -1;
 }
 return print_insn_cris_generic (vma, info, TRUE);
}
