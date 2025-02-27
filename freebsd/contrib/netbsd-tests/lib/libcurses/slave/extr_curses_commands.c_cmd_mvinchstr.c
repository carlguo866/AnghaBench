
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chtype ;


 int check_arg_count (int,int) ;
 int mvinchstr (int,int,int *) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_nstr (int *) ;
 int report_return (int ) ;
 scalar_t__ sscanf (char*,char*,int*) ;

void
cmd_mvinchstr(int nargs, char **args)
{
 int y, x;
 chtype string[256];

 if (check_arg_count(nargs, 2) == 1)
  return;

 if (sscanf(args[0], "%d", &y) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[1], "%d", &x) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }


 report_count(2);
 report_return(mvinchstr(y, x, string));
 report_nstr(string);
}
