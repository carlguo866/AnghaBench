
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ale_entries; scalar_t__ ale_regs; } ;
struct cpsw_ale {TYPE_1__ params; } ;


 int ALE_ENTRY_WORDS ;
 scalar_t__ ALE_TABLE ;
 scalar_t__ ALE_TABLE_CONTROL ;
 int ALE_TABLE_WRITE ;
 int WARN_ON (int) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int cpsw_ale_write(struct cpsw_ale *ale, int idx, u32 *ale_entry)
{
 int i;

 WARN_ON(idx > ale->params.ale_entries);

 for (i = 0; i < ALE_ENTRY_WORDS; i++)
  writel_relaxed(ale_entry[i], ale->params.ale_regs +
          ALE_TABLE + 4 * i);

 writel_relaxed(idx | ALE_TABLE_WRITE, ale->params.ale_regs +
         ALE_TABLE_CONTROL);

 return idx;
}
