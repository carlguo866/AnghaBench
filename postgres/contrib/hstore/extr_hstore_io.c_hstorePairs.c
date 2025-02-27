
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32 ;
typedef int Pairs ;
typedef int HStore ;
typedef int HEntry ;


 int * ARRPTR (int *) ;
 scalar_t__ CALCDATASIZE (scalar_t__,scalar_t__) ;
 int HS_ADDITEM (int *,char*,char*,int ) ;
 int HS_FINALIZE (int *,scalar_t__,char*,char*) ;
 int HS_SETCOUNT (int *,scalar_t__) ;
 int SET_VARSIZE (int *,scalar_t__) ;
 char* STRPTR (int *) ;
 int * palloc (scalar_t__) ;

HStore *
hstorePairs(Pairs *pairs, int32 pcount, int32 buflen)
{
 HStore *out;
 HEntry *entry;
 char *ptr;
 char *buf;
 int32 len;
 int32 i;

 len = CALCDATASIZE(pcount, buflen);
 out = palloc(len);
 SET_VARSIZE(out, len);
 HS_SETCOUNT(out, pcount);

 if (pcount == 0)
  return out;

 entry = ARRPTR(out);
 buf = ptr = STRPTR(out);

 for (i = 0; i < pcount; i++)
  HS_ADDITEM(entry, buf, ptr, pairs[i]);

 HS_FINALIZE(out, pcount, buf, ptr);

 return out;
}
