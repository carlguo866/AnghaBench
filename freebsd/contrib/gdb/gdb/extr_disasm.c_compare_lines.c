
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dis_line_entry {int line; int start_pc; } ;



__attribute__((used)) static int
compare_lines (const void *mle1p, const void *mle2p)
{
  struct dis_line_entry *mle1, *mle2;
  int val;

  mle1 = (struct dis_line_entry *) mle1p;
  mle2 = (struct dis_line_entry *) mle2p;

  val = mle1->line - mle2->line;

  if (val != 0)
    return val;

  return mle1->start_pc - mle2->start_pc;
}
