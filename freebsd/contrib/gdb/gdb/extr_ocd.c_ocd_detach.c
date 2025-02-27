
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 int pop_target () ;
 int puts_filtered (char*) ;

void
ocd_detach (char *args, int from_tty)
{
  if (args)
    error ("Argument given to \"detach\" when remotely debugging.");

  pop_target ();
  if (from_tty)
    puts_filtered ("Ending remote debugging.\n");
}
