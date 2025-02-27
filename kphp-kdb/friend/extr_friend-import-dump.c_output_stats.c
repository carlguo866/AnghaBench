
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GC ;
 scalar_t__ GS ;
 int Gc ;
 int Gd ;
 int adj_rec ;
 int ext_lists_output ;
 int fprintf (int ,char*,int,int,int ,int ,long,int ,int ,int ,int ) ;
 int line_no ;
 int lists_output ;
 int rd_bytes ;
 int stderr ;
 int wr_bytes ;

void output_stats (void) {
  fprintf (stderr,
    "read: %lld bytes, %d records read, %d processed\n"
    "written: %lld bytes\n"
    "temp data: %ld bytes allocated, %d+%d in read/write maps\n"
    "lists output: %d basic, %d extended\n",
    rd_bytes, line_no, adj_rec, wr_bytes, (long)(GS - GC), Gc, Gd,
    lists_output, ext_lists_output);
}
