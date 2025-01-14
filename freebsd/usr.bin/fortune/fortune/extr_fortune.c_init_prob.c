
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int percent; struct TYPE_3__* prev; } ;
typedef TYPE_1__ FILEDESC ;


 int DPRINTF (int,int ) ;
 int Debug ;
 scalar_t__ Equal_probs ;
 TYPE_1__* File_tail ;
 int NO_PROB ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int print_file_list () ;
 int stderr ;

__attribute__((used)) static void
init_prob(void)
{
 FILEDESC *fp, *last = ((void*)0);
 int percent, num_noprob, frac;







 percent = 0;
 num_noprob = 0;
 for (fp = File_tail; fp != ((void*)0); fp = fp->prev)
  if (fp->percent == NO_PROB) {
   num_noprob++;
   if (Equal_probs)
    last = fp;
  } else
   percent += fp->percent;
 DPRINTF(1, (stderr, "summing probabilities:%d%% with %d NO_PROB's",
      percent, num_noprob));
 if (percent > 100) {
  (void) fprintf(stderr,
      "fortune: probabilities sum to %d%% > 100%%!\n", percent);
  exit(1);
 } else if (percent < 100 && num_noprob == 0) {
  (void) fprintf(stderr,
      "fortune: no place to put residual probability (%d%% < 100%%)\n",
      percent);
  exit(1);
 } else if (percent == 100 && num_noprob != 0) {
  (void) fprintf(stderr,
      "fortune: no probability left to put in residual files (100%%)\n");
  exit(1);
 }
 percent = 100 - percent;
 if (Equal_probs) {
  if (num_noprob != 0) {
   if (num_noprob > 1) {
    frac = percent / num_noprob;
    DPRINTF(1, (stderr, ", frac = %d%%", frac));
    for (fp = File_tail; fp != last; fp = fp->prev)
     if (fp->percent == NO_PROB) {
      fp->percent = frac;
      percent -= frac;
     }
   }
   last->percent = percent;
   DPRINTF(1, (stderr, ", residual = %d%%", percent));
  }
  else
  DPRINTF(1, (stderr,
       ", %d%% distributed over remaining fortunes\n",
       percent));
 }
 DPRINTF(1, (stderr, "\n"));





}
