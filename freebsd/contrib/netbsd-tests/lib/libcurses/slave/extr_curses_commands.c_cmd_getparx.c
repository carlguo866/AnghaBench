
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int check_arg_count (int,int) ;
 int getparx (int *) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_int (int ) ;
 scalar_t__ sscanf (char*,char*,int **) ;

void
cmd_getparx(int nargs, char **args)
{
 WINDOW *win;

 if (check_arg_count(nargs, 1) == 1)
  return;

 if (sscanf(args[0], "%p", &win) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 report_count(1);
 report_int(getparx(win));
}
