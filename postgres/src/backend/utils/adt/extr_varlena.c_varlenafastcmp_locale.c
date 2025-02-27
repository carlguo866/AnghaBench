
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VarString ;
typedef int SortSupport ;
typedef scalar_t__ Datum ;


 int * DatumGetVarStringPP (scalar_t__) ;
 scalar_t__ PointerGetDatum (int *) ;
 char* VARDATA_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int pfree (int *) ;
 int varstrfastcmp_locale (char*,int,char*,int,int ) ;

__attribute__((used)) static int
varlenafastcmp_locale(Datum x, Datum y, SortSupport ssup)
{
 VarString *arg1 = DatumGetVarStringPP(x);
 VarString *arg2 = DatumGetVarStringPP(y);
 char *a1p,
      *a2p;
 int len1,
    len2,
    result;

 a1p = VARDATA_ANY(arg1);
 a2p = VARDATA_ANY(arg2);

 len1 = VARSIZE_ANY_EXHDR(arg1);
 len2 = VARSIZE_ANY_EXHDR(arg2);

 result = varstrfastcmp_locale(a1p, len1, a2p, len2, ssup);


 if (PointerGetDatum(arg1) != x)
  pfree(arg1);
 if (PointerGetDatum(arg2) != y)
  pfree(arg2);

 return result;
}
