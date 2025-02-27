
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ string; scalar_t__ str_to_int64_hex; scalar_t__ str_to_int64_ex; } ;
typedef TYPE_1__ StrToIntResult ;
typedef scalar_t__ BOOL ;


 int STIF_SUPPORT_HEX ;
 scalar_t__ StrToIntExA (scalar_t__,int ,int*) ;
 TYPE_1__* StrToInt_results ;
 int ok (int,char*,scalar_t__,...) ;

__attribute__((used)) static void test_StrToIntExA(void)
{
  const StrToIntResult *result = StrToInt_results;
  int return_val;
  BOOL bRet;

  while (result->string)
  {
    return_val = -1;
    bRet = StrToIntExA(result->string,0,&return_val);
    ok(!bRet || return_val != -1, "No result returned from '%s'\n",
       result->string);
    if (bRet)
      ok(return_val == (int)result->str_to_int64_ex, "converted '%s' wrong (%d)\n",
         result->string, return_val);
    result++;
  }

  result = StrToInt_results;
  while (result->string)
  {
    return_val = -1;
    bRet = StrToIntExA(result->string,STIF_SUPPORT_HEX,&return_val);
    ok(!bRet || return_val != -1, "No result returned from '%s'\n",
       result->string);
    if (bRet)
      ok(return_val == (int)result->str_to_int64_hex, "converted '%s' wrong (%d)\n",
         result->string, return_val);
    result++;
  }
}
