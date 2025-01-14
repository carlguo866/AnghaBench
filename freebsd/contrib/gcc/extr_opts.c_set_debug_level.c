
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum debug_info_type { ____Placeholder_debug_info_type } debug_info_type ;


 int DBX_DEBUG ;
 int DWARF2_DEBUG ;
 int NO_DEBUG ;
 int PREFERRED_DEBUGGING_TYPE ;
 unsigned int debug_info_level ;
 char const** debug_type_names ;
 int error (char*,char const*) ;
 unsigned int integral_argument (char const*) ;
 int use_gnu_debug_info_extensions ;
 int warning (int ,char*) ;
 int write_symbols ;

__attribute__((used)) static void
set_debug_level (enum debug_info_type type, int extended, const char *arg)
{
  static bool type_explicit;

  use_gnu_debug_info_extensions = extended;

  if (type == NO_DEBUG)
    {
      if (write_symbols == NO_DEBUG)
 {
   write_symbols = PREFERRED_DEBUGGING_TYPE;

   if (extended == 2)
     {





     }

   if (write_symbols == NO_DEBUG)
     warning (0, "target system does not support debug output");
 }
    }
  else
    {

      if (type_explicit && write_symbols != NO_DEBUG && type != write_symbols)
 error ("debug format \"%s\" conflicts with prior selection",
        debug_type_names[type]);
      write_symbols = type;
      type_explicit = 1;
    }


  if (*arg == '\0')
    {
      if (!debug_info_level)
 debug_info_level = 2;
    }
  else
    {
      debug_info_level = integral_argument (arg);
      if (debug_info_level == (unsigned int) -1)
 error ("unrecognised debug output level \"%s\"", arg);
      else if (debug_info_level > 3)
 error ("debug output level %s is too high", arg);
    }
}
