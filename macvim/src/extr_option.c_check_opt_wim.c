
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char char_u ;


 scalar_t__ ASCII_ISALPHA (char) ;
 int FAIL ;
 char NUL ;
 int OK ;
 scalar_t__ STRNCMP (char*,char*,int) ;
 char WIM_FULL ;
 char WIM_LIST ;
 char WIM_LONGEST ;
 char* p_wim ;
 char* wim_flags ;

__attribute__((used)) static int
check_opt_wim()
{
    char_u new_wim_flags[4];
    char_u *p;
    int i;
    int idx = 0;

    for (i = 0; i < 4; ++i)
 new_wim_flags[i] = 0;

    for (p = p_wim; *p; ++p)
    {
 for (i = 0; ASCII_ISALPHA(p[i]); ++i)
     ;
 if (p[i] != NUL && p[i] != ',' && p[i] != ':')
     return FAIL;
 if (i == 7 && STRNCMP(p, "longest", 7) == 0)
     new_wim_flags[idx] |= WIM_LONGEST;
 else if (i == 4 && STRNCMP(p, "full", 4) == 0)
     new_wim_flags[idx] |= WIM_FULL;
 else if (i == 4 && STRNCMP(p, "list", 4) == 0)
     new_wim_flags[idx] |= WIM_LIST;
 else
     return FAIL;
 p += i;
 if (*p == NUL)
     break;
 if (*p == ',')
 {
     if (idx == 3)
  return FAIL;
     ++idx;
 }
    }


    while (idx < 3)
    {
 new_wim_flags[idx + 1] = new_wim_flags[idx];
 ++idx;
    }


    for (i = 0; i < 4; ++i)
 wim_flags[i] = new_wim_flags[i];
    return OK;
}
