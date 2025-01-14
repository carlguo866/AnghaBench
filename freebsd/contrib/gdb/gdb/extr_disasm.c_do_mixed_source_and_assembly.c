
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_stream {int dummy; } ;
struct ui_out {int dummy; } ;
struct symtab_and_line {scalar_t__ end; } ;
struct symtab {int dummy; } ;
struct linetable_entry {scalar_t__ pc; scalar_t__ line; } ;
struct disassemble_info {int dummy; } ;
struct dis_line_entry {scalar_t__ line; scalar_t__ start_pc; scalar_t__ end_pc; } ;
struct cleanup {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ alloca (int) ;
 int compare_lines ;
 int do_cleanups (struct cleanup*) ;
 scalar_t__ dump_insns (struct ui_out*,struct disassemble_info*,scalar_t__,scalar_t__,int,struct ui_stream*) ;
 struct symtab_and_line find_pc_line (scalar_t__,int ) ;
 struct cleanup* make_cleanup (int ,int ) ;
 struct cleanup* make_cleanup_ui_out_list_begin_end (struct ui_out*,char*) ;
 struct cleanup* make_cleanup_ui_out_tuple_begin_end (struct ui_out*,char*) ;
 int null_cleanup ;
 int print_source_lines (struct symtab*,int,int,int ) ;
 int qsort (struct dis_line_entry*,int,int,int ) ;
 int ui_out_text (struct ui_out*,char*) ;

__attribute__((used)) static void
do_mixed_source_and_assembly (struct ui_out *uiout,
         struct disassemble_info *di, int nlines,
         struct linetable_entry *le,
         CORE_ADDR low, CORE_ADDR high,
         struct symtab *symtab,
         int how_many, struct ui_stream *stb)
{
  int newlines = 0;
  struct dis_line_entry *mle;
  struct symtab_and_line sal;
  int i;
  int out_of_order = 0;
  int next_line = 0;
  CORE_ADDR pc;
  int num_displayed = 0;
  struct cleanup *ui_out_chain;
  struct cleanup *ui_out_tuple_chain = make_cleanup (null_cleanup, 0);
  struct cleanup *ui_out_list_chain = make_cleanup (null_cleanup, 0);

  mle = (struct dis_line_entry *) alloca (nlines
       * sizeof (struct dis_line_entry));







  for (i = 0; i < nlines - 1 && le[i].pc < low; i++);



  for (; i < nlines - 1 && le[i].pc < high; i++)
    {
      if (le[i].line == le[i + 1].line && le[i].pc == le[i + 1].pc)
 continue;


      if (le[i].line == 0)
 continue;

      mle[newlines].line = le[i].line;
      if (le[i].line > le[i + 1].line)
 out_of_order = 1;
      mle[newlines].start_pc = le[i].pc;
      mle[newlines].end_pc = le[i + 1].pc;
      newlines++;
    }




  if (i == nlines - 1 && le[i].pc < high)
    {
      mle[newlines].line = le[i].line;
      mle[newlines].start_pc = le[i].pc;
      sal = find_pc_line (le[i].pc, 0);
      mle[newlines].end_pc = sal.end;
      newlines++;
    }




  if (out_of_order)
    qsort (mle, newlines, sizeof (struct dis_line_entry), compare_lines);





  ui_out_chain = make_cleanup_ui_out_list_begin_end (uiout, "asm_insns");

  for (i = 0; i < newlines; i++)
    {

      if (mle[i].line >= next_line)
 {
   if (next_line != 0)
     {

       if (next_line == mle[i].line)
  {
    ui_out_tuple_chain
      = make_cleanup_ui_out_tuple_begin_end (uiout,
          "src_and_asm_line");
    print_source_lines (symtab, next_line, mle[i].line + 1, 0);
  }
       else
  {

    for (; next_line < mle[i].line; next_line++)
      {
        struct cleanup *ui_out_list_chain_line;
        struct cleanup *ui_out_tuple_chain_line;

        ui_out_tuple_chain_line
   = make_cleanup_ui_out_tuple_begin_end (uiout,
              "src_and_asm_line");
        print_source_lines (symtab, next_line, next_line + 1,
       0);
        ui_out_list_chain_line
   = make_cleanup_ui_out_list_begin_end (uiout,
             "line_asm_insn");
        do_cleanups (ui_out_list_chain_line);
        do_cleanups (ui_out_tuple_chain_line);
      }


    ui_out_tuple_chain
      = make_cleanup_ui_out_tuple_begin_end (uiout,
          "src_and_asm_line");
    print_source_lines (symtab, next_line, mle[i].line + 1, 0);
  }
     }
   else
     {
       ui_out_tuple_chain
  = make_cleanup_ui_out_tuple_begin_end (uiout, "src_and_asm_line");
       print_source_lines (symtab, mle[i].line, mle[i].line + 1, 0);
     }

   next_line = mle[i].line + 1;
   ui_out_list_chain
     = make_cleanup_ui_out_list_begin_end (uiout, "line_asm_insn");
 }

      num_displayed += dump_insns (uiout, di, mle[i].start_pc, mle[i].end_pc,
       how_many, stb);



      if (i == (newlines - 1) || mle[i + 1].line > mle[i].line)
 {
   do_cleanups (ui_out_list_chain);
   do_cleanups (ui_out_tuple_chain);
   ui_out_tuple_chain = make_cleanup (null_cleanup, 0);
   ui_out_list_chain = make_cleanup (null_cleanup, 0);
   ui_out_text (uiout, "\n");
 }
      if (how_many >= 0 && num_displayed >= how_many)
 break;
    }
  do_cleanups (ui_out_chain);
}
