
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u64 ;
struct thread {int dummy; } ;
struct perf_sample {int cpumode; struct branch_stack* branch_stack; } ;
struct perf_event_attr {int dummy; } ;
struct branch_stack {size_t nr; TYPE_2__* entries; } ;
struct addr_location {int map; int sym; } ;
typedef int alt ;
typedef int alf ;
struct TYPE_3__ {int cycles; scalar_t__ abort; scalar_t__ in_tx; } ;
struct TYPE_4__ {size_t from; size_t to; TYPE_1__ flags; } ;
typedef int FILE ;


 int DSO ;
 scalar_t__ PRINT_FIELD (int ) ;
 scalar_t__ fprintf (int *,char*,...) ;
 scalar_t__ map__fprintf_dsoname (int ,int *) ;
 int memset (struct addr_location*,int ,int) ;
 int mispred_str (TYPE_2__*) ;
 scalar_t__ symbol__fprintf_symname_offs (int ,struct addr_location*,int *) ;
 int thread__find_symbol_fb (struct thread*,int ,size_t,struct addr_location*) ;

__attribute__((used)) static int perf_sample__fprintf_brstacksym(struct perf_sample *sample,
        struct thread *thread,
        struct perf_event_attr *attr, FILE *fp)
{
 struct branch_stack *br = sample->branch_stack;
 struct addr_location alf, alt;
 u64 i, from, to;
 int printed = 0;

 if (!(br && br->nr))
  return 0;

 for (i = 0; i < br->nr; i++) {

  memset(&alf, 0, sizeof(alf));
  memset(&alt, 0, sizeof(alt));
  from = br->entries[i].from;
  to = br->entries[i].to;

  thread__find_symbol_fb(thread, sample->cpumode, from, &alf);
  thread__find_symbol_fb(thread, sample->cpumode, to, &alt);

  printed += symbol__fprintf_symname_offs(alf.sym, &alf, fp);
  if (PRINT_FIELD(DSO)) {
   printed += fprintf(fp, "(");
   printed += map__fprintf_dsoname(alf.map, fp);
   printed += fprintf(fp, ")");
  }
  printed += fprintf(fp, "%c", '/');
  printed += symbol__fprintf_symname_offs(alt.sym, &alt, fp);
  if (PRINT_FIELD(DSO)) {
   printed += fprintf(fp, "(");
   printed += map__fprintf_dsoname(alt.map, fp);
   printed += fprintf(fp, ")");
  }
  printed += fprintf(fp, "/%c/%c/%c/%d ",
   mispred_str( br->entries + i),
   br->entries[i].flags.in_tx? 'X' : '-',
   br->entries[i].flags.abort? 'A' : '-',
   br->entries[i].flags.cycles);
 }

 return printed;
}
