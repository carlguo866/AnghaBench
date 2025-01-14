
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {int dummy; } ;
struct komeda_component {int reg; } ;


 int dump_block_header (struct seq_file*,int ) ;
 int get_values_from_reg (int ,int,int,int*) ;
 int seq_printf (struct seq_file*,char*,int,...) ;

__attribute__((used)) static void d71_wb_layer_dump(struct komeda_component *c, struct seq_file *sf)
{
 u32 v[12], i;

 dump_block_header(sf, c->reg);

 get_values_from_reg(c->reg, 0x80, 1, v);
 seq_printf(sf, "LW_INPUT_ID0:\t\t0x%X\n", v[0]);

 get_values_from_reg(c->reg, 0xD0, 3, v);
 seq_printf(sf, "LW_CONTROL:\t\t0x%X\n", v[0]);
 seq_printf(sf, "LW_PROG_LINE:\t\t0x%X\n", v[1]);
 seq_printf(sf, "LW_FORMAT:\t\t0x%X\n", v[2]);

 get_values_from_reg(c->reg, 0xE0, 1, v);
 seq_printf(sf, "LW_IN_SIZE:\t\t0x%X\n", v[0]);

 for (i = 0; i < 2; i++) {
  get_values_from_reg(c->reg, 0x100 + i * 0x10, 3, v);
  seq_printf(sf, "LW_P%u_PTR_LOW:\t\t0x%X\n", i, v[0]);
  seq_printf(sf, "LW_P%u_PTR_HIGH:\t\t0x%X\n", i, v[1]);
  seq_printf(sf, "LW_P%u_STRIDE:\t\t0x%X\n", i, v[2]);
 }

 get_values_from_reg(c->reg, 0x130, 12, v);
 for (i = 0; i < 12; i++)
  seq_printf(sf, "LW_RGB_YUV_COEFF%u:\t0x%X\n", i, v[i]);
}
