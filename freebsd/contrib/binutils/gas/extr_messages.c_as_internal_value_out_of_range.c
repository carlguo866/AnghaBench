
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef scalar_t__ offsetT ;
typedef int bfd_vma ;
typedef scalar_t__ addressT ;


 scalar_t__ HEX_MAX_THRESHOLD ;
 scalar_t__ HEX_MIN_THRESHOLD ;
 char* _ (char*) ;
 int abort () ;
 int as_bad_where (char*,unsigned int,char const*,char*,...) ;
 int as_warn_where (char*,unsigned int,char const*,char*,...) ;
 int sprintf_vma (char*,scalar_t__) ;

__attribute__((used)) static void
as_internal_value_out_of_range (char * prefix,
    offsetT val,
    offsetT min,
    offsetT max,
    char * file,
    unsigned line,
    int bad)
{
  const char * err;

  if (prefix == ((void*)0))
    prefix = "";

  if (val >= min && val <= max)
    {
      addressT right = max & -max;

      if (max <= 1)
 abort ();


      err = _("%s out of domain (%d is not a multiple of %d)");
      if (bad)
 as_bad_where (file, line, err,
        prefix, (int) val, (int) right);
      else
 as_warn_where (file, line, err,
         prefix, (int) val, (int) right);
      return;
    }

  if ( val < HEX_MAX_THRESHOLD
      && min < HEX_MAX_THRESHOLD
      && max < HEX_MAX_THRESHOLD
      && val > HEX_MIN_THRESHOLD
      && min > HEX_MIN_THRESHOLD
      && max > HEX_MIN_THRESHOLD)
    {

      err = _("%s out of range (%d is not between %d and %d)");

      if (bad)
 as_bad_where (file, line, err,
        prefix, (int) val, (int) min, (int) max);
      else
 as_warn_where (file, line, err,
         prefix, (int) val, (int) min, (int) max);
    }
  else
    {
      char val_buf [sizeof (val) * 3 + 2];
      char min_buf [sizeof (val) * 3 + 2];
      char max_buf [sizeof (val) * 3 + 2];

      if (sizeof (val) > sizeof (bfd_vma))
 abort ();

      sprintf_vma (val_buf, val);
      sprintf_vma (min_buf, min);
      sprintf_vma (max_buf, max);


      err = _("%s out of range (0x%s is not between 0x%s and 0x%s)");

      if (bad)
 as_bad_where (file, line, err, prefix, val_buf, min_buf, max_buf);
      else
 as_warn_where (file, line, err, prefix, val_buf, min_buf, max_buf);
    }
}
