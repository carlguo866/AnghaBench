
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_info {size_t uid; int block; struct target_info* next; } ;
typedef int rtx ;


 size_t INSN_UID (int ) ;
 size_t TARGET_HASH_PRIME ;
 struct target_info** target_hash_table ;

void
clear_hashed_info_for_insn (rtx insn)
{
  struct target_info *tinfo;

  if (target_hash_table != ((void*)0))
    {
      for (tinfo = target_hash_table[INSN_UID (insn) % TARGET_HASH_PRIME];
    tinfo; tinfo = tinfo->next)
 if (tinfo->uid == INSN_UID (insn))
   break;

      if (tinfo)
 tinfo->block = -1;
    }
}
