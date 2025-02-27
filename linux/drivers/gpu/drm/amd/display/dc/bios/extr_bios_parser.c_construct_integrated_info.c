
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct integrated_info {struct clock_voltage_caps* disp_clk_voltage; } ;
struct clock_voltage_caps {scalar_t__ max_supported_clk; int member_1; int member_0; } ;
struct bios_parser {TYPE_2__* master_data_tbl; } ;
struct atom_data_revision {int minor; } ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_3__ {scalar_t__ IntegratedSystemInfo; } ;
struct TYPE_4__ {TYPE_1__ ListOfDataTables; } ;


 int ATOM_COMMON_TABLE_HEADER ;
 int BP_RESULT_BADBIOSTABLE ;
 int BP_RESULT_OK ;
 int GET_IMAGE (int,scalar_t__) ;
 size_t NUMBER_OF_DISP_CLK_VOLTAGE ;
 int get_atom_data_table_revision (int,struct atom_data_revision*) ;
 int get_integrated_info_v8 (struct bios_parser*,struct integrated_info*) ;
 int get_integrated_info_v9 (struct bios_parser*,struct integrated_info*) ;
 int header ;

__attribute__((used)) static enum bp_result construct_integrated_info(
 struct bios_parser *bp,
 struct integrated_info *info)
{
 enum bp_result result = BP_RESULT_BADBIOSTABLE;

 ATOM_COMMON_TABLE_HEADER *header;
 struct atom_data_revision revision;

 if (bp->master_data_tbl->ListOfDataTables.IntegratedSystemInfo) {
  header = GET_IMAGE(ATOM_COMMON_TABLE_HEADER,
    bp->master_data_tbl->ListOfDataTables.IntegratedSystemInfo);

  get_atom_data_table_revision(header, &revision);


  switch (revision.minor) {
  case 8:
   result = get_integrated_info_v8(bp, info);
   break;
  case 9:
   result = get_integrated_info_v9(bp, info);
   break;
  default:
   return result;

  }
 }


 if (result == BP_RESULT_OK) {
  struct clock_voltage_caps temp = {0, 0};
  uint32_t i;
  uint32_t j;

  for (i = 1; i < NUMBER_OF_DISP_CLK_VOLTAGE; ++i) {
   for (j = i; j > 0; --j) {
    if (
      info->disp_clk_voltage[j].max_supported_clk <
      info->disp_clk_voltage[j-1].max_supported_clk) {

     temp = info->disp_clk_voltage[j-1];
     info->disp_clk_voltage[j-1] =
       info->disp_clk_voltage[j];
     info->disp_clk_voltage[j] = temp;
    }
   }
  }

 }

 return result;
}
