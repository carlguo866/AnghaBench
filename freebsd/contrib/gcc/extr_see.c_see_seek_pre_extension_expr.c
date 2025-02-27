
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct see_pre_extension_expr {int * avail_occr; int * antic_occr; scalar_t__ bitmap_index; void* se_insn; } ;
typedef void* rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef enum extension_type { ____Placeholder_extension_type } extension_type ;


 int DEF_EXTENSION ;
 int INSERT ;
 int UNKNOWN ;
 int gcc_assert (int) ;
 scalar_t__ htab_elements (int ) ;
 scalar_t__ htab_find_slot (int ,struct see_pre_extension_expr*,int ) ;
 void* see_gen_normalized_extension (void*,int,int) ;
 int see_get_extension_data (void*,int*) ;
 void* see_get_extension_reg (void*,int) ;
 int see_pre_extension_hash ;
 struct see_pre_extension_expr* xmalloc (int) ;

__attribute__((used)) static struct see_pre_extension_expr *
see_seek_pre_extension_expr (rtx extension, enum extension_type type)
{
  struct see_pre_extension_expr **slot_pre_exp, temp_pre_exp;
  rtx dest_extension_reg = see_get_extension_reg (extension, 1);
  enum rtx_code extension_code;
  enum machine_mode source_extension_mode;

  if (type == DEF_EXTENSION)
    {
      extension_code = see_get_extension_data (extension,
            &source_extension_mode);
      gcc_assert (extension_code != UNKNOWN);
      extension =
 see_gen_normalized_extension (dest_extension_reg, extension_code,
          source_extension_mode);
    }
  temp_pre_exp.se_insn = extension;
  slot_pre_exp =
    (struct see_pre_extension_expr **) htab_find_slot (see_pre_extension_hash,
       &temp_pre_exp, INSERT);
  if (*slot_pre_exp == ((void*)0))


    {
      (*slot_pre_exp) = xmalloc (sizeof (struct see_pre_extension_expr));
      (*slot_pre_exp)->se_insn = extension;
      (*slot_pre_exp)->bitmap_index =
 (htab_elements (see_pre_extension_hash) - 1);
      (*slot_pre_exp)->antic_occr = ((void*)0);
      (*slot_pre_exp)->avail_occr = ((void*)0);
      return ((void*)0);
    }
  return *slot_pre_exp;
}
