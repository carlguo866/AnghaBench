
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct df_scan_problem_data {int insn_pool; } ;
struct df_insn_info {int dummy; } ;
struct df {int dummy; } ;
struct dataflow {scalar_t__ problem_data; struct df* df; } ;
typedef int rtx ;


 struct df_insn_info* DF_INSN_GET (struct df*,int ) ;
 int DF_INSN_SET (struct df*,int ,struct df_insn_info*) ;
 int memset (struct df_insn_info*,int ,int) ;
 struct df_insn_info* pool_alloc (int ) ;

__attribute__((used)) static struct df_insn_info *
df_insn_create_insn_record (struct dataflow *dflow, rtx insn)
{
  struct df *df = dflow->df;
  struct df_scan_problem_data *problem_data
    = (struct df_scan_problem_data *) dflow->problem_data;

  struct df_insn_info *insn_rec = DF_INSN_GET (df, insn);
  if (!insn_rec)
    {
      insn_rec = pool_alloc (problem_data->insn_pool);
      DF_INSN_SET (df, insn, insn_rec);
    }
  memset (insn_rec, 0, sizeof (struct df_insn_info));

  return insn_rec;
}
