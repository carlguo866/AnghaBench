
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gcov_position_t ;
typedef int basic_block ;


 int BB_TO_GCOV_INDEX (int ) ;
 int GCOV_TAG_LINES ;
 int gcov_write_string (char const*) ;
 scalar_t__ gcov_write_tag (int ) ;
 int gcov_write_unsigned (int) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static void
output_location (char const *file_name, int line,
   gcov_position_t *offset, basic_block bb)
{
  static char const *prev_file_name;
  static int prev_line;
  bool name_differs, line_differs;

  if (!file_name)
    {
      prev_file_name = ((void*)0);
      prev_line = -1;
      return;
    }

  name_differs = !prev_file_name || strcmp (file_name, prev_file_name);
  line_differs = prev_line != line;

  if (name_differs || line_differs)
    {
      if (!*offset)
 {
   *offset = gcov_write_tag (GCOV_TAG_LINES);
   gcov_write_unsigned (BB_TO_GCOV_INDEX (bb));
   name_differs = line_differs=1;
 }



      if (name_differs)
 {
   prev_file_name = file_name;
   gcov_write_unsigned (0);
   gcov_write_string (prev_file_name);
 }
      if (line_differs)
 {
   gcov_write_unsigned (line);
   prev_line = line;
 }
     }
}
