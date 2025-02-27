
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;


 scalar_t__ DEFINE_ATTR ;
 scalar_t__ DEFINE_DELAY ;
 scalar_t__ DEFINE_INSN_RESERVATION ;
 int FATAL_EXIT_CODE ;
 scalar_t__ GET_CODE (int *) ;
 scalar_t__ SUCCESS_EXIT_CODE ;
 scalar_t__ XVECEXP (int *,int,int) ;
 int XVECLEN (int *,int) ;
 scalar_t__ fclose (int ) ;
 scalar_t__ ferror (int ) ;
 scalar_t__ fflush (int ) ;
 int gen_attr (int *) ;
 scalar_t__ init_md_reader_args (int,char**) ;
 int printf (char*) ;
 char* progname ;
 int puts (char*) ;
 int * read_md_rtx (int*,int*) ;
 int stdout ;

int
main (int argc, char **argv)
{
  rtx desc;
  int have_delay = 0;
  int have_annul_true = 0;
  int have_annul_false = 0;
  int num_insn_reservations = 0;
  int i;

  progname = "genattr";

  if (init_md_reader_args (argc, argv) != SUCCESS_EXIT_CODE)
    return (FATAL_EXIT_CODE);

  puts ("/* Generated automatically by the program `genattr'");
  puts ("   from the machine description file `md'.  */\n");
  puts ("#ifndef GCC_INSN_ATTR_H");
  puts ("#define GCC_INSN_ATTR_H\n");




  puts ("#define HAVE_ATTR_alternative");
  puts ("#define get_attr_alternative(insn) which_alternative");



  while (1)
    {
      int line_no, insn_code_number;

      desc = read_md_rtx (&line_no, &insn_code_number);
      if (desc == ((void*)0))
 break;

      if (GET_CODE (desc) == DEFINE_ATTR)
 gen_attr (desc);

      else if (GET_CODE (desc) == DEFINE_DELAY)
        {
   if (! have_delay)
     {
       printf ("#define DELAY_SLOTS\n");
       printf ("extern int num_delay_slots (rtx);\n");
       printf ("extern int eligible_for_delay (rtx, int, rtx, int);\n\n");
       printf ("extern int const_num_delay_slots (rtx);\n\n");
       have_delay = 1;
     }

   for (i = 0; i < XVECLEN (desc, 1); i += 3)
     {
       if (XVECEXP (desc, 1, i + 1) && ! have_annul_true)
  {
    printf ("#define ANNUL_IFTRUE_SLOTS\n");
    printf ("extern int eligible_for_annul_true (rtx, int, rtx, int);\n");
    have_annul_true = 1;
  }

       if (XVECEXP (desc, 1, i + 2) && ! have_annul_false)
  {
    printf ("#define ANNUL_IFFALSE_SLOTS\n");
    printf ("extern int eligible_for_annul_false (rtx, int, rtx, int);\n");
    have_annul_false = 1;
  }
     }
        }

      else if (GET_CODE (desc) == DEFINE_INSN_RESERVATION)
 num_insn_reservations++;
    }

  if (num_insn_reservations > 0)
    {


      printf ("\n#define INSN_SCHEDULING\n");
      printf ("\n/* DFA based pipeline interface.  */");
      printf ("\n#ifndef AUTOMATON_ALTS\n");
      printf ("#define AUTOMATON_ALTS 0\n");
      printf ("#endif\n\n");
      printf ("\n#ifndef AUTOMATON_STATE_ALTS\n");
      printf ("#define AUTOMATON_STATE_ALTS 0\n");
      printf ("#endif\n\n");
      printf ("#ifndef CPU_UNITS_QUERY\n");
      printf ("#define CPU_UNITS_QUERY 0\n");
      printf ("#endif\n\n");

      printf ("/* Internal insn code number used by automata.  */\n");
      printf ("extern int internal_dfa_insn_code (rtx);\n\n");
      printf ("/* Insn latency time defined in define_insn_reservation. */\n");
      printf ("extern int insn_default_latency (rtx);\n\n");
      printf ("/* Return nonzero if there is a bypass for given insn\n");
      printf ("   which is a data producer.  */\n");
      printf ("extern int bypass_p (rtx);\n\n");
      printf ("/* Insn latency time on data consumed by the 2nd insn.\n");
      printf ("   Use the function if bypass_p returns nonzero for\n");
      printf ("   the 1st insn. */\n");
      printf ("extern int insn_latency (rtx, rtx);\n\n");
      printf ("\n#if AUTOMATON_ALTS\n");
      printf ("/* The following function returns number of alternative\n");
      printf ("   reservations of given insn.  It may be used for better\n");
      printf ("   insns scheduling heuristics. */\n");
      printf ("extern int insn_alts (rtx);\n\n");
      printf ("#endif\n\n");
      printf ("/* Maximal possible number of insns waiting results being\n");
      printf ("   produced by insns whose execution is not finished. */\n");
      printf ("extern const int max_insn_queue_index;\n\n");
      printf ("/* Pointer to data describing current state of DFA.  */\n");
      printf ("typedef void *state_t;\n\n");
      printf ("/* Size of the data in bytes.  */\n");
      printf ("extern int state_size (void);\n\n");
      printf ("/* Initiate given DFA state, i.e. Set up the state\n");
      printf ("   as all functional units were not reserved.  */\n");
      printf ("extern void state_reset (state_t);\n");
      printf ("/* The following function returns negative value if given\n");
      printf ("   insn can be issued in processor state described by given\n");
      printf ("   DFA state.  In this case, the DFA state is changed to\n");
      printf ("   reflect the current and future reservations by given\n");
      printf ("   insn.  Otherwise the function returns minimal time\n");
      printf ("   delay to issue the insn.  This delay may be zero\n");
      printf ("   for superscalar or VLIW processors.  If the second\n");
      printf ("   parameter is NULL the function changes given DFA state\n");
      printf ("   as new processor cycle started.  */\n");
      printf ("extern int state_transition (state_t, rtx);\n");
      printf ("\n#if AUTOMATON_STATE_ALTS\n");
      printf ("/* The following function returns number of possible\n");
      printf ("   alternative reservations of given insn in given\n");
      printf ("   DFA state.  It may be used for better insns scheduling\n");
      printf ("   heuristics.  By default the function is defined if\n");
      printf ("   macro AUTOMATON_STATE_ALTS is defined because its\n");
      printf ("   implementation may require much memory.  */\n");
      printf ("extern int state_alts (state_t, rtx);\n");
      printf ("#endif\n\n");
      printf ("extern int min_issue_delay (state_t, rtx);\n");
      printf ("/* The following function returns nonzero if no one insn\n");
      printf ("   can be issued in current DFA state. */\n");
      printf ("extern int state_dead_lock_p (state_t);\n");
      printf ("/* The function returns minimal delay of issue of the 2nd\n");
      printf ("   insn after issuing the 1st insn in given DFA state.\n");
      printf ("   The 1st insn should be issued in given state (i.e.\n");
      printf ("    state_transition should return negative value for\n");
      printf ("    the insn and the state).  Data dependencies between\n");
      printf ("    the insns are ignored by the function.  */\n");
      printf
 ("extern int min_insn_conflict_delay (state_t, rtx, rtx);\n");
      printf ("/* The following function outputs reservations for given\n");
      printf ("   insn as they are described in the corresponding\n");
      printf ("   define_insn_reservation.  */\n");
      printf ("extern void print_reservation (FILE *, rtx);\n");
      printf ("\n#if CPU_UNITS_QUERY\n");
      printf ("/* The following function returns code of functional unit\n");
      printf ("   with given name (see define_cpu_unit). */\n");
      printf ("extern int get_cpu_unit_code (const char *);\n");
      printf ("/* The following function returns nonzero if functional\n");
      printf ("   unit with given code is currently reserved in given\n");
      printf ("   DFA state.  */\n");
      printf ("extern int cpu_unit_reservation_p (state_t, int);\n");
      printf ("#endif\n\n");
      printf ("/* Clean insn code cache.  It should be called if there\n");
      printf ("   is a chance that condition value in a\n");
      printf ("   define_insn_reservation will be changed after\n");
      printf ("   last call of dfa_start.  */\n");
      printf ("extern void dfa_clean_insn_cache (void);\n\n");
      printf ("extern void dfa_clear_single_insn_cache (rtx);\n\n");
      printf ("/* Initiate and finish work with DFA.  They should be\n");
      printf ("   called as the first and the last interface\n");
      printf ("   functions.  */\n");
      printf ("extern void dfa_start (void);\n");
      printf ("extern void dfa_finish (void);\n");
    }
  else
    {


      printf ("typedef void *state_t;\n\n");
    }





  printf("\n#define ATTR_FLAG_forward\t0x1\n");
  printf("#define ATTR_FLAG_backward\t0x2\n");
  printf("#define ATTR_FLAG_likely\t0x4\n");
  printf("#define ATTR_FLAG_very_likely\t0x8\n");
  printf("#define ATTR_FLAG_unlikely\t0x10\n");
  printf("#define ATTR_FLAG_very_unlikely\t0x20\n");

  puts("\n#endif /* GCC_INSN_ATTR_H */");

  if (ferror (stdout) || fflush (stdout) || fclose (stdout))
    return FATAL_EXIT_CODE;

  return SUCCESS_EXIT_CODE;
}
