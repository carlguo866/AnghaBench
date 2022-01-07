
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long used; char** field; } ;
typedef TYPE_1__ _bdf_list_t ;


 char* empty ;

__attribute__((used)) static char *
  _bdf_list_join( _bdf_list_t* list,
                  int c,
                  unsigned long *alen )
  {
    unsigned long i, j;
    char* dp;


    *alen = 0;

    if ( list == 0 || list->used == 0 )
      return 0;

    dp = list->field[0];
    for ( i = j = 0; i < list->used; i++ )
    {
      char* fp = list->field[i];


      while ( *fp )
        dp[j++] = *fp++;

      if ( i + 1 < list->used )
        dp[j++] = (char)c;
    }
    if ( dp != empty )
      dp[j] = 0;

    *alen = j;
    return dp;
  }
