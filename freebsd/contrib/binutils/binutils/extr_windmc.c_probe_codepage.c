
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rc_uint_type ;


 int CP_UTF16 ;
 char* _ (char*) ;
 int fatal (char*,unsigned int) ;
 int fprintf (int ,char*,...) ;
 char* program_name ;
 int stderr ;
 int unicode_is_valid_codepage (int) ;

__attribute__((used)) static int
probe_codepage (rc_uint_type *cp, int *is_uni, const char *pswitch, int defmode)
{
  if (*is_uni == -1)
    {
      if (*cp != CP_UTF16)
 *is_uni = defmode;
      else
 *is_uni = 1;
    }
  if (*is_uni)
    {
      if (*cp != 0 && *cp != CP_UTF16)
 {
   fprintf (stderr, _("%s: warning: "), program_name);
   fprintf (stderr, _("A codepage was specified switch ,%s' and UTF16.\n"), pswitch);
   fprintf (stderr, _("\tcodepage settings are ignored.\n"));
 }
      *cp = CP_UTF16;
      return 1;
    }
  if (*cp == CP_UTF16)
    {
      *is_uni = 1;
      return 1;
    }
  if (*cp == 0)
    *cp = 1252;
  if (! unicode_is_valid_codepage (*cp))
 fatal ("Code page 0x%x is unknown.", (unsigned int) *cp);
  *is_uni = 0;
  return 1;
}
