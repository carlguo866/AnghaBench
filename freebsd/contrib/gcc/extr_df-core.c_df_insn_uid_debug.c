
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct df {int dummy; } ;
typedef int FILE ;


 scalar_t__ DF_INSN_UID_DEFS (struct df*,unsigned int) ;
 int DF_INSN_UID_LUID (struct df*,unsigned int) ;
 scalar_t__ DF_INSN_UID_MWS (struct df*,unsigned int) ;
 scalar_t__ DF_INSN_UID_USES (struct df*,unsigned int) ;
 int DF_REF_BBNO (scalar_t__) ;
 int df_mws_dump (scalar_t__,int *) ;
 int df_refs_chain_dump (scalar_t__,int,int *) ;
 int fprintf (int *,char*,...) ;

__attribute__((used)) static void
df_insn_uid_debug (struct df *df, unsigned int uid,
     bool follow_chain, FILE *file)
{
  int bbi;

  if (DF_INSN_UID_DEFS (df, uid))
    bbi = DF_REF_BBNO (DF_INSN_UID_DEFS (df, uid));
  else if (DF_INSN_UID_USES(df, uid))
    bbi = DF_REF_BBNO (DF_INSN_UID_USES (df, uid));
  else
    bbi = -1;

  fprintf (file, "insn %d bb %d luid %d",
    uid, bbi, DF_INSN_UID_LUID (df, uid));

  if (DF_INSN_UID_DEFS (df, uid))
    {
      fprintf (file, " defs ");
      df_refs_chain_dump (DF_INSN_UID_DEFS (df, uid), follow_chain, file);
    }

  if (DF_INSN_UID_USES (df, uid))
    {
      fprintf (file, " uses ");
      df_refs_chain_dump (DF_INSN_UID_USES (df, uid), follow_chain, file);
    }

  if (DF_INSN_UID_MWS (df, uid))
    {
      fprintf (file, " mws ");
      df_mws_dump (DF_INSN_UID_MWS (df, uid), file);
    }
  fprintf (file, "\n");
}
