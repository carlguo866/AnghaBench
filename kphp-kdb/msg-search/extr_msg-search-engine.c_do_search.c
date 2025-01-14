
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAX_INTERMEDIATE_SIZE ;
 int* Q ;
 scalar_t__* Qc ;
 scalar_t__* Ql ;
 int Qw ;
 int* Res ;
 int* ResBuff ;
 int ResL ;
 size_t ResR ;
 int fprintf (int ,char*,...) ;
 int* intersect_lists (int*,int*,scalar_t__,scalar_t__,int*,int*) ;
 int stderr ;
 scalar_t__ verbosity ;

int do_search (int first_pos, int first_neg, int last_pos, int last_neg) {
  int i, j, t;

  ResL = 0;
  Res = 0;

  if (!Qw) {
    if (verbosity) {
      fprintf (stderr, "empty query\n");
    }
    return 0;
  }

  if (verbosity) {
    for (i = 0; i < Qw; i++) {
      fprintf (stderr, "%llu *%d .. ", Q[i], Qc[i]);
    }
    fprintf (stderr, "\n");
  }

  Res = Ql[0];
  ResL = Qc[0];

  if (Qc[0] > MAX_INTERMEDIATE_SIZE - ResR) {
    if (verbosity) {
      fprintf (stderr, "list too long: %d entries for %llu\n", Qc[0], Q[0]);
    }
    return -1;
  }

  j = 0;
  for (i = 0; i < ResL; i++) {
    t = Res[i];
    if ((t > first_pos && t < last_pos) || (t < first_neg && t > last_neg)) {
      ResBuff[ResR + j++] = t;
    }
  }

  if (verbosity) {
    fprintf (stderr, "list pruned, only %d entries out of %d remained\n", j, ResL);
  }

  Res = ResBuff + ResR;
  ResL = j;


  if (!ResL) {
    if (verbosity) {
      fprintf (stderr, "empty list for %llu\n", Q[0]);
    }
    return 0;
  }

  if (Qw == 1) {
    if (verbosity) {
      fprintf (stderr, "one-word query, loaded %d entries for %llu\n", Qc[0], Q[0]);
    }
    return ResL;
  }

  Res = Ql[0];
  ResL = Qc[0];
  for (i = 1; i < Qw; i++) {
    ResL = intersect_lists (Res, Res+ResL, Ql[i], Ql[i]+Qc[i], ResBuff+ResR, ResBuff+MAX_INTERMEDIATE_SIZE) - ResBuff - ResR;
    Res = ResBuff + ResR;
    if (verbosity > 0) {
      fprintf (stderr, "intersect_lists(): %d entries in result\n", ResL);
    }
    if (!ResL) return 0;
  }

  return ResL;

}
