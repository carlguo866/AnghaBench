
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct change {int dummy; } ;
typedef scalar_t__ lin ;
typedef enum changes { ____Placeholder_changes } changes ;


 size_t UNCHANGED ;
 int analyze_hunk (struct change*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int begin_output () ;
 int format_ifdef (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int * group_format ;
 scalar_t__ next_line0 ;
 scalar_t__ next_line1 ;

__attribute__((used)) static void
print_ifdef_hunk (struct change *hunk)
{
  lin first0, last0, first1, last1;


  enum changes changes = analyze_hunk (hunk, &first0, &last0, &first1, &last1);
  if (!changes)
    return;

  begin_output ();


  if (next_line0 < first0 || next_line1 < first1)
    format_ifdef (group_format[UNCHANGED],
    next_line0, first0,
    next_line1, first1);


  next_line0 = last0 + 1;
  next_line1 = last1 + 1;
  format_ifdef (group_format[changes],
  first0, next_line0,
  first1, next_line1);
}
